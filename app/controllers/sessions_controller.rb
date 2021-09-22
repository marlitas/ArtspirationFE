class SessionsController < ApplicationController
  skip_before_action :user_login

  def new; end

  def create
    user = UsersFacade.login_user(auth_hash)
    session[:user_id] = user[:data][:id]
    session[:user] = user
    redirect_to '/dashboard'
  end

  def destroy
    flash[:success] = "Logged Off"
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
