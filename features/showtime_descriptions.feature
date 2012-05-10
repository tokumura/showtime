Feature: Showtime Descriptions

  So that I can find movies that fit my schedule
  As a movie goer
  I want to se accurate and concise showtimes

  Scenario: Showtime format is yyyy-MM-dd HH:mm
    Given a movie
    When I set the showtime to "2012-05-10" and "21:00"
    Then the showtime should be "2012-05-10 21:00"


