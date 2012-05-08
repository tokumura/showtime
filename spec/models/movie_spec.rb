require 'spec_helper'

describe Movie do
  context "Genre_id is 3" do 
    before do
      @genre = Genre.new(:id => "3", :name => "")
      @genre.save!
      @movie = Movie.new(:title => 'hayabusa', :genre_id => 3)
      @movie.save!
      @movie = Movie.find_by_title('hayabusa')
    end
    it "Genre_id should be 3 (Drama)" do
      @movie.genre_id.should == 3
    end 
  end

  context "showtime 2010-10-10 2:15pm (not descript)" do 
    before do
      @movie = Movie.new(
        :title => "redcriff",
        :showtime_date => Date.parse("2007-10-10"),
        :showtime_time => "2:15pm")
      @movie.save!
      @movie = Movie.find_by_title("redcriff")
    end

    it "New movie title is 'redcriff'" do
      @movie.title.should == "redcriff"
    end
    it "New movie showtime is 'October 10, 2007 (2:15pm)'" do
      @movie.showtime.should == "October 10, 2007 (2:15pm)"
    end
  end

  context "showtime 2010-10-10 2:00pm (descript)" do 
    before do
      @movie = Movie.new(
        :title => "redcriff",
        :showtime_date => Date.parse("2007-10-10"),
        :showtime_time => "2:00pm")
      @movie.save!
      @movie = Movie.find_by_title("redcriff")
    end
    it "New movie title is 'redcriff'" do
      @movie.title.should == "redcriff"
    end
    it "New movie showtime is 'October 10, 2007 (2pm)'" do
      @movie.showtime.should == "October 10, 2007 (2pm)"
    end
  end
=begin
=end
end
