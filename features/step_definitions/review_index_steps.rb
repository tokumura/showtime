Given /^There are some reviews$/ do
  @genre = Genre.new(:id=>1, :name=>'Action')
  @genre.save!
  @movie = Movie.new(:id=>1, :title=>'MI4', :genre_id=>1)
  @movie.save!
  (1..3).each do |review_id|
    @review = Review.new(:id=>review_id, 
                         :subject=>'subject:' + review_id.to_s,
                         :detail=>'detail:' + review_id.to_s,
                         :movie_id=>1
                        )
    @review.save!
  end
  @reviews = Review.all
end

When /^I'm on reviews page$/ do
  visit reviews_path
end

Then /^It should have table has reviews list$/ do
  page.should have_content('Movie title')
  page.should have_content('Subject')
  page.should have_content('Detail')
  page.should have_content('MI4')
  (1..3).each do |review_id|
    page.should have_content('subject:' + review_id.to_s)
    page.should have_content('detail:' + review_id.to_s)
  end
end

