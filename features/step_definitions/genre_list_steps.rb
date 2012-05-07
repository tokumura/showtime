Given /^I'm on genres_path$/ do
  @movie = Movie.new(:title => 'Caddyshack')
  @movie.save!

end

When /^Selected "([^"]*)"$/ do |genre|
  visit genres_path
  click_link "Comedy"
  visit genre_path(1)
end

Then /^There are movies in genre Comedy$/ do
  puts page.body
  page.should have_content("Caddyshack")
end

