require 'spec_helper'

describe MoviesController do

  describe Movie, "Create new named 'Caddyshack'" do 
    before do
      @movie = Movie.new(:title => "Caddyshack")
      @movie.save!
      #@movie.reload
    end

    it "movie count is 1" do
      @movie = Movie.all
      @movie.count.should == 1
    end

    it "title is 'Caddyshack' by find" do
      @movie = Movie.find_by_title('Caddyshack')
      @movie.title.should == "Caddyshack"
    end
  end
=begin
=end
end

