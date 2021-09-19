class SessionsController < ApplicationController
  skip_before_action :user_login

  def create
    user = UsersFacade.login_user(auth_hash)
    session[:user_id] = user[:data][:id]

    redirect_to '/dashboard'
  end

  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
