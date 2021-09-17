class ArtworksFacade

  def self.get_rated_art(user_id)
    artworks = ArtworksService.get_artworks(user_id)
    artworks[:data].map do |artwork|
      Artwork.new(artwork)
    end
  end

end
