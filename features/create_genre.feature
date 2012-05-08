Feature: Crate genre

  Create new genre

  Scenario: Create new genre
    Given There are not genre named Comedy
    When I create a genre named "Comedy"
    Then "Comedy" should be in genres


