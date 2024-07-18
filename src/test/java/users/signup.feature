Feature: Signup functionality testing

  Background:
    * url 'https://api.demoblaze.com'

  Scenario Outline: Create a new user in signup
    Given path '/signup'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status 200

    Examples:
      | username    | password  |
      | user1       | password1|

  Scenario: Attempt to create a user that already exists
    Given path '/signup'
    And request { username: 'existinguser', password: 'password' }
    When method post
    Then match response == {  "errorMessage": "This user already exist." }
