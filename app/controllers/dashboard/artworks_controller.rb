class Dashboard::ArtworksController < ApplicationController
  def index
    @user = current_user
    @artworks = ArtworksFacade.get_rated_art(@user.id)
  end

  def show
    @user = current_user
    @artwork = ArtworksFacade.get_art(params[:id], @user.id)
  end
end
