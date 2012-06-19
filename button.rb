require 'dream_cheeky'
require 'tinder'
require 'yaml'

class BigRedButton
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
    @campfire.room
  end

  def start_loop
    DreamCheeky::BigRedButton.run do
      open do
      end

      close do
      end

      push do
      end
    end
  end
end

button = BigRedButton.new
button.start_loop
