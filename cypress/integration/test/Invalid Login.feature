Feature: Invalid Login Page  application
   As a user
   I want to Login into app

   Scenario: InValiid Login
      Given I visit "http://zero.webappsecurity.com/login.html"
      Then I entered "invalid username" at "loc_USERNAME"
      Then I entered "invalid password" at "loc_PASSWORD"
      Then I click on "loc_SUBMIT_BUTTON"
      Then I should see "Login and/or password are wrong." at "loc_ERROR_MESSAGE"

   # Scenario Outline: Scenario Outline name-InValiid Login
   #    Given I visit "http://zero.webappsecurity.com/login.html"
   #    Then I entered "invalid username" at "loc_USERNAME"
   #    Then I entered "invalid password" at "loc_PASSWORD"
   #    Then I click on "loc_SUBMIT_BUTTON"
   #    Then I should see <ERROR_MSG> at "loc_ERROR_MESSAGE"
   #    Examples:
   #       | ERROR_MSG                        |
   #       | Login and/or password are wrong. |


