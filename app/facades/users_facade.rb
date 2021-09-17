class UsersFacade
  def self.get_user(id)
    user = UsersService.get_user(id)
    User.new(user[:data])
  end

  def self.login_user(omniauth)
    user_body = { data: {
      id: nil,
      type: 'user',
      attributes: {
        name: omniauth['info']['name'],
        email: omniauth['info']['email'],
        token: omniauth['credentials']['token']
        }
      }
    }
    UsersService.post_user(user_body)
  end
end
