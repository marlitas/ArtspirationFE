class DashboardController < ApplicationController
  def index
    @user = UsersFacade.get_user(session[:user_id])
    require "pry";binding.pry
  end
end
