Feature: Crate movie

  So that customers can browse movies by genre
  As a site administartor
  I want to create a movie in a specific genre

  Scenario: Create movie in genre
    Given a genre named Comedy
    When I create a movie Caddyshack in the Comedy genre
    Then Caddyshack should be in the Comedy genre

  Scenario: Select genre
    Given I'm on genres_path
    When Selected "Comedy"
    Then There are movies in genre Comedy

