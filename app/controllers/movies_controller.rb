# coding: utf-8

class MoviesController < ApplicationController

  def index
    @genres = Genre.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @movie }
    end
  end

  def show
    @movie = Movie.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @movie }
    end
  end

  def new
    @genres = Genre.all
    @movie = Movie.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @movie }
    end
  end

  def create
    @movie= Movie.new(:title => params[:title], :genre_id => params[:genre_id])
    respond_to do |format|
      if @movie.save
        format.html { redirect_to(genres_path) }
        format.xml  { head :ok }
      else
        format.html { redirect_to(genres_path) }
        format.xml  { head :ok }
      end
    end
  end

end
