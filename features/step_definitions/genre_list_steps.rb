Given /^I'm on genres_path$/ do
  @movie = Movie.new(:title => 'Caddyshack', :genre_id => 2)
  @movie.save!
  @genre = Genre.new(:id => 1, :name => 'Action')
  @genre.save!
  @genre = Genre.new(:id => 2, :name => 'Comedy')
  @genre.save!
  @genre = Genre.new(:id => 3, :name => 'Drama')
  @genre.save!
end

When /^Selected "([^"]*)"$/ do |genre|
  visit genres_path
  click_link "Comedy"
end

Then /^There are movies in genre Comedy$/ do
  page.should have_content("Caddyshack")
end

