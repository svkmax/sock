#= require cable
#= require_self
#= require_tree .

@WebSock = {}
WebSock.cable = Cable.createConsumer("ws://0.0.0.0:8080")
alert("createConsumer");