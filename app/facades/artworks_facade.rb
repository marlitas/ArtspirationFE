class ArtworksFacade

  def self.get_rated_art(user_id)
    artworks = ArtworksService.get_artworks(user_id)
    artworks[:data].map do |artwork|
      Artwork.new(artwork)
    end
  end

  def self.get_artwork_recommendations(user_id)
    artworks = ArtworksService.get_recommendations(user_id)
    artworks[:data].map do |artwork|
      Artwork.new(artwork)
    end
  end

  def self.get_art(art_id, user_id)
    artwork = ArtworksService.get_art(art_id, user_id)
    Artwork.new(artwork[:data])
  end

  def self.update_art(art_id, user_id, content)
    content = {liked: content}
    artwork = ArtworksService.update_art(art_id, user_id, content)
    Artwork.new(artwork[:data])
  end

end
