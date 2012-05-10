require 'spec_helper'

describe ReviewsController do
  fixtures :movies, :reviews
  describe "GET /reviews" do
    it "should be successfiul" do
      get 'index'
      response.should be_success
    end
  end
end
