class Dashboard::ArtworksController < ApplicationController
  def index
    @user = current_user
    @artworks = ArtworksFacade.get_rated_art(@user.id)
  end

  def show

  end
end
