class GenresController < ApplicationController
  def index
    #@genres = Genre.all
    @genres = Genre.page(1)
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @genre }
    end
  end

  def show
    @genre = Genre.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @genre }
    end
  end

  def new
    @genre = Genre.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @genre }
    end
  end

  def create
    @genre= Genre.new(:name => params[:name])
    respond_to do |format|
      if @genre.save
        format.html { redirect_to(movies_path) }
        format.xml  { head :ok }
      else
        format.html { redirect_to(movies_path) }
        format.xml  { head :ok }
      end
    end
  end
end
