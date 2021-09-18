class DashboardController < ApplicationController
  def index
    @user = UsersFacade.get_user(session[:user_id])
    @liked_art = ArtworksFacade.get_rated_art(session[:user_id])
  end
end
