class UsersController < ApplicationController

  def show
    @user = UserFacade.get_user(params[:id])
  end

end
