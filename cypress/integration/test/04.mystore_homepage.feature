Feature: My Store Home page assertion
    As user
    I wat to see
    home page of My Store

    Scenario: Home page title for My store
        Given I visit "mystoreWeb"
        Then I should see page title "My Store"
