class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :user_login

  def current_user
    UsersFacade.get_user(session[:user_id]) if session[:user_id]
  end

  def user_login
    if !current_user
      redirect_to root_path
      flash[:alert] = 'You must be logged in to visit that page.'
    end
  end

end
