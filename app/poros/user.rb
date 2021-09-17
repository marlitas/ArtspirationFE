class User
  attr_reader :name, :email

  def initialize(user)
    @name = user[:attributes][:name]
    @email = user[:attributes][:email]
  end
end
