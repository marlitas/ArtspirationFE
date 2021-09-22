class DashboardController < ApplicationController
  def index
    @user = session[:user]
    @liked_art = ArtworksFacade.get_rated_art(session[:user_id])
    @recommended_art = ArtworksFacade.get_artwork_recommendations(session[:user_id])
  end
end
