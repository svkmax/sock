# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController

  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    cookies.signed[:email] = params[:session][:email]
    redirect_to messages_path
  end

  def new

  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end