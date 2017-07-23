class MountainsController < ApplicationController

  def clean_phone
    mountain_params[:phone] = mountain_params[:phone].scan(/\d/).join
  end

  def index
    @mountains = Mountain.all.reverse
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
    clean_phone
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
  clean_phone
  @mountain = Mountain.new(mountain_params)
  if @mountain.save
    render :create
  else
    render :new
  end
end

end
