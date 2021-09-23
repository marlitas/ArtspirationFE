class DashboardController < ApplicationController
  def index
    @user = current_user
    @liked_art = ArtworksFacade.get_rated_art(@user.id)
    @recommended_art = ArtworksFacade.get_artwork_recommendations(@user.id)
  end
end
