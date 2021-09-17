class UsersFacade
  def self.get_user(id)
    user = UsersService.get_user(id)
    User.new(user[:data])
  end
end
