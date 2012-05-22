require 'spec_helper'

describe GenresController do
  fixtures :genres, :movies

  describe "GET /genres" do
    it "should be successfiul" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET /genres/:id" do
    it "should be successfiul" do
      get 'show', :id => genres(:action).id
      response.should be_success
    end
  end

  describe "GET /genres/new" do
    it "should be successfiul" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST /genres" do
    it "should be successfiul" do
      post 'create', {:name => 'SF'}
      #response.should redirect_to(controller: "movies", action: "index")
      response.should redirect_to(movies_path)
    end
  end




=begin
  describe Genre, "Create new genre named 'Action'" do 
    fixtures :genres
    before do
      @genre = Genre.find_by_name('Action')
    end

    it "There is 'Action'" do
      @genre.name.should == "Action"
    end
  end
=end

end
