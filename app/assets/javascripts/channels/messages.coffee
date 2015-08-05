WebSock.messages = WebSock.cable.subscriptions.create 'MessagesChannel',
  received: (data) ->
    alert("message received!")
    $('#messages').append @renderMessage(data)

  renderMessage: (data) ->
    "<p><b>[#{data.username}]:</b> #{data.message}</p>"