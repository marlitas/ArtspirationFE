class User
  attr_reader :name, :email, :id

  def initialize(user)
    @name = user[:attributes][:name]
    @email = user[:attributes][:email]
    @id = user[:id]
  end
end
