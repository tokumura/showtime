When /^I create a movie Caddyshack in the Comedy genre$/ do
  visit movies_path
  click_link "Add Movie"
  fill_in "Title", :with => "Caddyshack"
  choose "Comedy"
end

When /^I select "([^"]*)" with release year$/ do |release_year|
  select release_year, :from => "Release Year"
end

When /^I select "([^"]*)" with show month$/ do |show_month|
  select show_month, :from => "show_month"
end

When /^I select "([^"]*)" with show day$/ do |show_day|
  select show_day, :from => "show_day"
end

When /^I select "([^"]*)" with show hour$/ do |show_hour|
  select show_hour, :from => "show_hour"
end

When /^I select "([^"]*)" with show minutes$/ do |show_minutes|
  select show_minutes, :from => "show_min"
  click_button "Save"
end

Then /^Caddyshack should be in the Comedy genre$/ do
  visit genres_path
  click_link "Comedy"
  page.should have_content("1 movie")
  page.should have_content("Caddyshack")
end

Then /^It's release year should be "([^"]*)"$/ do |release_year|
  page.should have_content(release_year)
end

Then /^It's showtime should be "([^"]*)"$/ do |showtime|
  page.should have_content(showtime)
  click_link "Top"
  page.should have_content("Add Movie")
end


