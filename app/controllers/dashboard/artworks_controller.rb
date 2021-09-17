class Dashboard::ArtworksController < ApplicationController
  def index
    require "pry";binding.pry
    @user = UsersFacade.get_user(params[:user_id])
    @artworks = ArtworksFacade.get_rated_art(@user.id)
  end
end
