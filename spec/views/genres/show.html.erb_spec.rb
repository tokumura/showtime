require 'spec_helper'

describe "genres/show.html.erb" do
  fixtures :genres, :movies
  before(:each) do
    @genre = genres(:comedy)
  end
  it "displays the text 'Caddyshack'" do
    render
    rendered.should have_content('Caddyshack')
  end
=begin
=end
  it "displays the text '2012-05-10 21:00'" do
    render
    rendered.should have_content('2012-05-10 21:00')
  end
  it "displays the text '1980'" do
    pending
    render
    rendered.should have_content('1980')
  end
end

