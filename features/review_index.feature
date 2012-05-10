Feature: Review index page

  Review index page has table has reviews list.

  Scenario: Review index page has table has reviews list
    Given There are some reviews
    When  I'm on reviews page
    Then  It should have table has reviews list
