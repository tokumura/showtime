require 'spec_helper'

describe Review do
  fixtures :movies, :reviews
  before do
    @review = reviews(:first)
  end

  describe Review, "members" do
    it "should have 'subject', 'detail', 'movie_id'" do
      @review.subject.should == 'first review'
      @review.detail.should == 'it is fanny'
      @review.movie_id.should == 1
    end
  end

  describe Review, "belongs to Movie" do
    it "should belogn to Movie" do
      @movie = Movie.find(1)
      @movie.reviews.count.should == 2
    end
  end
=begin
=end

end

