class SessionsController < ApplicationController
  def create
    require "pry";binding.pry
    user = UsersFacade.login_user(request.env['omniauth.auth'])
    session[:user_id] = user[:data][:id]
  end
end
