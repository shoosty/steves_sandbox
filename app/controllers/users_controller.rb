class UsersController < ApplicationController
# controller methods never take parameters!
  def show
    @user = User.find_by(id: params[:id])
  end
end
