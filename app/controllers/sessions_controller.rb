# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController

  def create
    cookies.signed[:email] = params[:session][:email]
    redirect_to messages_path
  end

  def new

  end

end