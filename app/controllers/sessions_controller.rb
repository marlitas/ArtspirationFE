class SessionsController < ApplicationController
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
