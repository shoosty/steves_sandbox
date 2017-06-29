class StaticPagesController < ApplicationController
  def index
    render :index
  end

  def about
    render :about
  end

  def contact
    render :contact
  end

  def demos
    render :demos
  end

  def notes
    render :notes
  end

end
