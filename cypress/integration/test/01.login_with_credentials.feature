Feature: Login to application with valid and invalid credentials

   As a user
   I want to Login into app

   Scenario: Login with valid credentials
      Given I visit "zeroWeb"
      Then I entered "username" at "loc01_USERNAME"
      Then I entered "password" at "loc01_PASSWORD"
      Then I click on "loc01_SUBMIT_BUTTON"
      Then I shloud see home page

   Scenario: Login with invalid credentials
      Given I visit "zeroWeb"
      Then I entered "invalid username" at "loc01_USERNAME"
      Then I entered "invalid password" at "loc01_PASSWORD"
      Then I click on "loc01_SUBMIT_BUTTON"
      Then I should see "Login and/or password are wrong." at "loc01_ERROR_MESSAGE"


