@wip
Feature: User Sign Up
  In order to gain access to authenticated sections of the site
  A user
  Should be able to sign in on the homepage

  Scenario: User signs up with Github
    When I join with Github
    Then I should be registered
