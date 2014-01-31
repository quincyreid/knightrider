Feature: Robot Creation
  As a user
  I need to be able to create a robot
  So that I can share my work to the masses

  @wip
  Scenario: User creates a robot
    Given I exist as a user
    And I am logged in
    And I go to create a new robot
    When I add a robot with valid data
    Then I should be taken to view my robot