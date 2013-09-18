canLoad = (event, message) ->
  safari.self.tab.canLoad event, message

loadVideo = (options) ->
  safari.self.tab.dispatchMessage "loadVideo", options

updateVolume = (volume) ->
  safari.self.tab.dispatchMessage "updateVolume", volume

safari.self.addEventListener "message", (event) ->
  if event.name == "injectVideo"
    injectVideo event.message.playerId, event.message.meta
, true