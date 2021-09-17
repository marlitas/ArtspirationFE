class SessionsController < ApplicationController
  def create
    user = UsersFacade.login_user(request.env['omniauth.auth'])
    session[:user_id] = user[:data][:id]

    redirect_to '/dashboard'
  end
end
