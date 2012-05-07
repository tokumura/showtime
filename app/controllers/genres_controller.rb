class GenresController < ApplicationController
  def index
    @genres = Genre.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @genre }
    end
  end

  def show
    #@genre = Genre.find(params[:id])
    @movies = Movie.all
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @genre }
    end
    
  end
end
