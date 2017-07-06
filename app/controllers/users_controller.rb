class UsersController < ApplicationController
# controller methods never take parameters!

  def user_params
    params.require(:user).permit!
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :create
    else
      render :error
    end
  end

  def user
    @user = User.find_by(id: params[:id])
  end

  def show
    user
  end

  def edit
    user
  end

  def update
    user.update(user_params)
        redirect_to "/users"
  end

  def destroy
    user.destroy
    redirect_to "/users"
  end

  def new
    @user = User.new
  end

end
