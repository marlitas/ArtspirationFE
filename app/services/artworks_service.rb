class ArtworksService

  def self.connect
    Faraday.new(url: 'https://www.localhost:3000')
  end

  def self.get_artworks(user_id)
    response = ArtworksService.connect.get("/api/v1/users/#{user_id}/rated_art")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_art(art_id, user_id)
    response = ArtworksService.connect.get("/api/v1/users/#{user_id}/rated_art/#{art_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.update_art(art_id, user_id, content)
    response = ArtworksService.connect.patch("/api/v1/users/#{user_id}/rated_art/#{art_id}") do |req|
      req.body = content.to_json
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
