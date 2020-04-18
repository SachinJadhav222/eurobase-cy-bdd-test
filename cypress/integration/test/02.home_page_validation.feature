Feature: Home page assertion
    As user
    I wat to see
    home page of Eurobase

    Scenario: Home page title
        Given I visit "eurobaseWeb"
        Then I should see page title "Insurance and Banking Software and Services | Eurobase International"
