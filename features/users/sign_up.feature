@wip
Feature: User Sign In
  In order to gain access to authenticated sections of the site
  A user
  Should be able to sign in on the homepage


  Scenario: Sign in via Github
    Given I exist as a user
    And I have signed in before with my Github account
    When I sign in
    Then I should be signed in