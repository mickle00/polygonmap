class CoordinatesController < ApplicationController

def index
		@coords = Coordinate.new
	end

  def create
    @coord = Coordinate.new(params[:coordinate])
    @coord.save
    redirect_to @coord
    #render :partial => 'show', :object => @coord
  end

  def show
    @coords = Coordinate.find(params[:id])    
  end

end
