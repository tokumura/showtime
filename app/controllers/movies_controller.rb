# coding: utf-8

class MoviesController < ApplicationController

  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @movie }
    end
  end

  def new
    @movie = Movie.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @movie }
    end
  end

  def create
    puts params
    puts params[:movie].values[0]
    @movie= Movie.new(:title => params[:movie].values[0])
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
