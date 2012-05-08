Given /^There are not genre named Comedy$/ do
end

When /^I create a genre named "([^"]*)"$/ do |genre_name|
  visit new_genre_path
  puts page.body
  fill_in "name", :with => genre_name
  click_button "Save"
end

Then /^"([^"]*)" should be in genres$/ do |genre_name|
  page.should have_content(genre_name)
end

