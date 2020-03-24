Feature: Contact form 
    As user
    I wat to see
    home page of Eurobase

    Scenario: Hoem page title
        Given I visit "eurobaseWeb"
        Then I should see page title "Insurance and Banking Software and Services | Eurobase International"
        Then I click on xpath "loc_contactus_tab"
        Then I should see page title "Contact Us | Eurobase International Group"
        Then I scrolled to bottom
        Then I entered "Sachin" at "loc_firstname"
        Then I entered "Jadhav" at "loc_lastname"
        Then I entered "sachinjadhav@gmail.com" at "loc_email"
