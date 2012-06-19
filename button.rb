require 'dream_cheeky'
require 'tinder'
require 'yaml'

class Button
  def initialize
    @config   = load_campfire_config
    @campfire = campfire_authenticate
  end

  def load_campfire_config
    YAML::load(File.open('config.yml'))["campfire"]
  end

  def campfire_authenticate
    api_token = @config["token"]
    subdomain = @config["subdomain"]
    Tinder::Campfire.new subdomain, :token => api_token
  end

  def room
    @campfire.find_room_by_name @config["room"]
  end

  def post_open_lid_message
    room.speak @config["open_msg"]
  end

  def post_close_lid_message
    room.speak @config["close_msg"]
  end

  def post_push_message
    room.speak @config["push_msg"]
  end
end

@@button = Button.new

DreamCheeky::BigRedButton.run do
  open do
    @@button.post_open_lid_message
  end

  close do
    @@button.post_close_lid_message
  end

  push do
    @@button.post_push_message
  end
end
