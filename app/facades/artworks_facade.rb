class ArtworksFacade

  def self.get_rated_art(user_id)
    artworks = ArtworksService.get_artworks(user_id)
    artworks[:data].map do |artwork|
      Artwork.new(artwork)
    end
  end

  def self.get_art(art_id, user_id)
    artwork = ArtworksService.get_art(art_id, user_id)
    Artwork.new(artwork[:data])
  end

  def self.delete_like(art_id, user_id)
    artwork = ArtworksService.delete_like(art_id, user_id)
    Artwork.new(artwork[:data])
  end
end
