Feature: My Store Home page assertion
    As user
    I wat to see
    home page of My Store

    Scenario: Home page title for My store
        Given I visit "mystoreWeb"
        Then I should see page title "My Store"
        Then I click on "loc04_signIn_button"
        Then I should see page title "Login - My Store"
        Then I entered "JadhavSachin@yahoo.com" at "loc04_create_email"
        Then I click on "loc04_create_submit_button"
        Then I shloud see "loc04_first_name" is visible
