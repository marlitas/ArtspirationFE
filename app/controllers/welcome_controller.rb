class WelcomeController < ApplicationController
  skip_before_action :user_login

  def index; end

end
