Given /^I'm on Movie Top page$/ do
  visit movies_path
end

When /^click 'Review' link$/ do
  click_link('Review')
end

Then /^Move review list page$/ do
  page.should have_content('Review List')
  page.should have_content('reviews')
  page.should have_content('Add review')
end

