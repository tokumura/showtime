require 'spec_helper'

describe MoviesController do
  fixtures :movies

  describe "Use MoviesController" do
    it "should use MoivesController" do
      controller.should be_an_instance_of(MoviesController)
    end
  end

  describe "GET /movies" do
    it "should be successfiul" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET /movies/:id" do
    it "should be successfiul" do
      get 'show', :id => movies(:nobara).id
      response.should be_success
    end
  end

  describe "GET /movies/new" do
    it "should be successfiul" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST /movies" do
    it "should be successfiul" do
      post 'create', {
                      :title => 'hayabusa2',
                      :genre_id => '3',
                      :show_year=> '2010',
                      :show_month=> '05',
                      :show_day=> '10',
                      :show_hour=> '21',
                      :show_min=> '00'
                     }
      #response.should redirect_to(controller: "genres", action: "index")
      response.should redirect_to(genres_path)
=begin
=end
      
    end
  end
end

