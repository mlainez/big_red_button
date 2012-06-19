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

This is where you can find the Big Red Button [Dream Cheeky's website](http://dreamcheeky.com/big-red-button)

Me pug bombing my teammates through the Big Red Button (you need hubot for that :)

![alt pug bomb through big red button](http://f.cl.ly/items/3X0k1k0z350X0R3r2s12/Screen%20Shot%202012-06-19%20at%2015.30.21.png)