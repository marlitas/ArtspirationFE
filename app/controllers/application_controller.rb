class ApplicationController < ActionController::Base
  def current_user
    UsersFacade.get_user(session[:user_id]) if session[:user_id]
  end
end
