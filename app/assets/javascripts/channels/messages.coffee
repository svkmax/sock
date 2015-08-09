WebSock.messages = WebSock.cable.subscriptions.create 'MessagesChannel',
  received: (data) ->
    $('#messages').append @renderMessage(data)

  renderMessage: (data) ->
    "<p><b>[#{data.username}]:</b> #{data.message}</p>"