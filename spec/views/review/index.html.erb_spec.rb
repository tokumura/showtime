require 'spec_helper'

describe "reviews/index.html.erb" do
  fixtures :reviews
  before do
    @reviews = Review.all
  end

  it "displays the text 'Review List'" do
    render
    rendered.should have_content("Review List")
  end

  it "displays the text '2 reviews'" do
    render
    rendered.should have_content("2 reviews")
  end

  it "displays the text 'Add review'" do
    render
    rendered.should have_content("Add review")
  end

  it "displays the text 'Top'" do
    render
    rendered.should have_content("Top")
  end

  it "displays the header text in table 'Movie title'" do
    render
    rendered.should have_content("Movie title")
  end

  it "displays the header text in table 'Subject'" do
    render
    rendered.should have_content("Subject")
  end

  it "displays the header text in table 'Detail'" do
    render
    rendered.should have_content("Detail")
  end

  it "displays the text in table 'nobara'" do
    render
    rendered.should have_content("nobara")
  end

  it "displays the text in table 'first review'" do
    render
    rendered.should have_content("first review")
  end

  it "displays the text in table 'it is fanny'" do
    render
    rendered.should have_content("it is fanny")
  end
end
