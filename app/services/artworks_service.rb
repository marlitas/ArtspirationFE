class ArtworksService

  def self.connect
    Faraday.new(url: 'https://www.localhost:3000')
  end

  def self.get_artworks(user_id)
    response = UsersService.connect.get("/api/v1/users/#{user_id}/rated_art")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_recommendations(user_id)
    response = UsersService.connect.get("/api/v1/users/#{user_id}/recommendations")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_artwork(id)
    response = UsersService.connect.get("/api/v1/art/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

end
