Given /^visit movies_path$/ do
  @genre = Genre.create!(:name => "Action")
  @genre.save!
  @genre = Genre.create!(:name => "Comedy")
  @genre.save!
  @genre = Genre.create!(:name => "Drama")
  @genre.save!
end

When /^I'm on movies_path$/ do
  visit movies_path
end

Then /^There is link "([^"]*)"\.$/ do |link_text|
  page.should have_content(link_text)
end

