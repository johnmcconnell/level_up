Feature: Log in with Github
  As a very lazy new user
  I want to sign in with my Github account
  So that I don't have to type so much

  Background:
    Given I am not logged in
    And I have a Github account that I don't mind sharing

  Scenario: Logging in to sign up
    Given I do not exist as a user
    When I press the Github login button
    Then I should be redirected to Github
    When I complete the github authorization flow
    Then my account should be created and tied to Github
    And I should be logged in using my Github credentials
    And I should see a success message telling me that I logged in with Github

  Scenario: I have an existing account, but sign in with Github
    Given I exist as a user
    When I press the Github login button
    Then I should be redirected to Github
    When I complete the github authorization flow
    Then my existing account should be tied to my Github credentials
    And I should be logged in using my Github credentials
    And I should see a success message telling me that I logged in with Github

  Scenario: Logging in again
    Given I exist as a user with github credentials
    When I press the Github login button
    Then I should be logged in using my Github credentials
    And I should see a success message telling me that I logged in with Github
