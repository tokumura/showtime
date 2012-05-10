class ReviewsController < ApplicationController

  def index
    @movies = Movie.all
    @reviews = Review.all
    @reviews.each do |review|
      puts review.movie.title + ':' + review.subject
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @reviews }
    end
  end

end
