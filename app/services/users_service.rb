class UsersService
  def self.connect
    Faraday.new(url: 'https://www.localhost:3000')
  end

  def self.get_user(user_id)
    response = UsersService.connect.get("/api/v1/users/#{user_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.post_user(user_body)
    response = UsersService.connect.post("/api/v1/users") do |req|
      req.body = user_body.to_json
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
