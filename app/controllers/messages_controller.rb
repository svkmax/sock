class MessagesController < ApplicationController
  def create
    ActionCable.server.broadcast 'messages', message: params[:message][:body],  username: params[:message][:user]
    head :ok
  end

  def index
  end

end
