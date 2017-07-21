class ArtistsController < ApplicationController
  def index
    @artist = Artist.all
  end

  def create

  end

  def new
    
  end

  def edit
    
  end

  def show
      # @artist = Artist.includes(:albums).find params[:id]
      @artist = Artist.find params[:id]
  end

  def update
    
  end

  def destroy
    
  end

  protected
    def xxxx_params
      params.require(:xxxx).permit(:xxxxxx)
    end

end
