# Dream Cheeky Campfire post

If you're using campfire with your team and want to post messages when using the button, here is a short script to show you how it can be done.

You just need to set a few config parameters

```yaml
campfire:
  subdomain: YOUR_SUBDOMAIN
  token: CAMPFIRE_API_TOKEN
  room: CAMPFIRE_ROOM
  open_msg: MESSAGE_POSTED_WHEN_BUTTON_LID_OPENED
  close_msg: MESSAGE_POSTED_WHEN_BUTTON_LID_CLOSED
  push_msg: MESSAGE_POSTED_WHEN_BUTTON_PUSHED
```

Then run the script

```
$ bundle
$ ruby button.rb
```