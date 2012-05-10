Feature: Move Review Page from Movie Top

  When 'add review' link clicked, 
  it's move review list page.

  Scenario: Move to review list page
    Given I'm on Movie Top page
    When  click 'Review' link
    Then  Move review list page

  Scenario: Move to Top(movies) page from review list page
    Given I'm on Review list page
    When  click 'Top' link
    Then  Move Top(movies) page
