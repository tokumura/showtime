require 'spec_helper'

describe "movies/index.html.erb" do
  fixtures :genres
  before do
    @genres = Genre.all
  end

  it "displays the text 'Welcome to Top'" do
    render
    rendered.should have_content("Welcome to Top")
  end
  it "displays the text 'Add Movie'" do
    render
    rendered.should have_content("Add Movie")
  end
  it "displays the text 'Add Genre'" do
    render
    rendered.should have_content("Add Genre")
  end
  it "displays the text 'All Movie'" do
    render
    rendered.should have_content("All Movies")
  end
  it "displays the text 'Action'" do
    render
    rendered.should have_content("Action")
  end
  it "displays the text 'Comedy'" do
    render
    rendered.should have_content("Comedy")
  end
  it "displays the text 'Drama'" do
    render
    rendered.should have_content("Drama")
  end
end
