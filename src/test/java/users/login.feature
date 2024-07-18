Feature: Login functionality testing

  Background:
    * url 'https://api.demoblaze.com'

  Scenario Outline: Login with correct credentials
    Given path '/login'
    And request { username: '<username>', password: '<password>' }
    When method post
    Then status 200

    Examples:
      | username    | password  |
      | user1       | password1 |

  Scenario: Login with incorrect credentials
    Given path '/login'
    And request { username: 'user1', password: 'wrongpassword' }
    When method post
    Then match response == {"errorMessage":"Wrong password."}
