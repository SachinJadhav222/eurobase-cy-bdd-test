Feature: Login to application with valid credentials

   As a user
   I want to Login into app

   Scenario: Valiid Login
      Given I visit "http://zero.webappsecurity.com/login.html"
      Then I entered "username" at "loc_USERNAME"
      Then I entered "password" at "loc_PASSWORD"
      Then I click on "loc_SUBMIT_BUTTON"
      Then I shloud see home page


