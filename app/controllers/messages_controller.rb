class MessagesController < ApplicationController
  def create
    #ActionCable.server.broadcast 'messages', message: render( partial: 'messages/message', locals: { message: params[:message][:body], username: cookies.signed[:email] })
    ActionCable.server.broadcast 'messages', message: params[:message][:body], username: cookies.signed[:email]
    head :ok
  end

  def index
  end

end
