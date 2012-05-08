Feature: Show Top

  Show top page.
  Top page has links.
  It's 'Add Movie', 'Add Genre', 'All Movie', and All Genres.

  Scenario: Show top page
    Given visit movies_path
    When I'm on movies_path
    Then There is link "Add Movie".
    And There is link "Add Genre".
    And There is link "All Movies".
    And There is link "Action".
    And There is link "Comedy".
    And There is link "Drama".

