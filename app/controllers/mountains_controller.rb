class MountainsController < ApplicationController

  def index
    @mountains = Mountain.all
  end

  def show
    mountain
  end

  def mountain
    @mountain = Mountain.find(params[:id])
  end

  def edit
    mountain
  end

  def update
    mountain.update(mountain_params)
    redirect_to "/mountains"
  end

  def mountain_params
    params.require(:mountain).permit!
  end

  def destroy
    mountain.destroy
  redirect_to "/mountains"
  end

  def new
    @mountain = Mountain.new
  end

def create
  @mountain = Mountain.new(mountain_params)
  if @mountain.save
    render :create
  else
    render :error
  end
end

end
