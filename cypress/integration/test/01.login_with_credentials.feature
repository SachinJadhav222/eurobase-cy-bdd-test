Feature: Login to application with valid and invalid credentials

   As a user
   I want to Login into app

   Scenario: Login with valid credentials
      Given I visit "zeroWeb"
      Then I entered "username" at "loc_USERNAME"
      Then I entered "password" at "loc_PASSWORD"
      Then I click on "loc_SUBMIT_BUTTON"
      Then I shloud see home page

   Scenario: Login with invalid credentials
      Given I visit "zeroWeb"
      Then I entered "invalid username" at "loc_USERNAME"
      Then I entered "invalid password" at "loc_PASSWORD"
      Then I click on "loc_SUBMIT_BUTTON"
      Then I should see "Login and/or password are wrong." at "loc_ERROR_MESSAGE"


