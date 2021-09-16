class UsersService
  def self.connect
    Faraday.new(url: 'https://www.localhost:3000')
  end

  def self.get_user(user_id)
    response = UsersService.connect.get("/api/v1/users/#{user_id}")
    JSON.parse(response.body, symbomlize_names: true)
  end
end
