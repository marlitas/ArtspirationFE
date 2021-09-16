class User
  attr_reader :name, :email

  def initialize(user)
    @name = user['data']['attributes']['name']
    @email = user['data']['attributes']['email']
  end
end
