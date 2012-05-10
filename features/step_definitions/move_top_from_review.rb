Given /^I'm on Review list page$/ do
  visit reviews_path
end

When /^click 'Top' link$/ do
  click_link('Top')
end

Then /^Move Top\(movies\) page$/ do
  page.should have_content("Welcome to Top")
end

