class ArtworksService

  def self.connect
    Faraday.new(url: 'https://peaceful-reef-61917.herokuapp.com')
  end

  def self.get_artworks(user_id)
    response = ArtworksService.connect.get("/api/v1/users/#{user_id}/rated_arts")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_recommendations(user_id)
    response = UsersService.connect.get("/api/v1/users/#{user_id}/recommendations")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_art(art_id, user_id)
    response = ArtworksService.connect.get("/api/v1/users/#{user_id}/rated_arts/#{art_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.update_art(art_id, user_id, content)
    response = ArtworksService.connect.patch("/api/v1/users/#{user_id}/rated_arts/#{art_id}") do |req|
      req.body = content.to_json
      req.headers = {'Content-Type' => 'application/json'}
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
