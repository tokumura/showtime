Feature: Crate movie

  So that customers can browse movies by genre
  As a site administartor
  I want to create a movie in a specific genre

  Scenario: Create movie in genre
    Given a genre named Comedy
    When I create a movie Caddyshack in the Comedy genre
    And  I select "1980" with release year
    And  I select "05" with show month
    And  I select "10" with show day
    And  I select "21" with show hour
    And  I select "00" with show minutes 
    Then Caddyshack should be in the Comedy genre
    And  It's release year should be "1980"
    And  It's showtime should be "2012-05-10 21:00"

  Scenario: Select genre
    Given I'm on genres_path
    When Selected "Comedy"
    Then There are movies in genre Comedy

