class HomesController < ApplicationController
  def index
    @home = Home.third
  end

  def new
  	@home = Home.new
  end

  def create
  	@home = Home.new(image_params)
  	@home.save
  	redirect_to homes_new_path
  end

  private

  def image_params
  	params.require(:home).permit(:image)
  end
end
