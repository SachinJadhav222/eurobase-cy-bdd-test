Feature: Contact form
    As user
    I wat to see
    home page of Eurobase

    Scenario: Contact us successful form fill
        Given I visit "eurobaseWeb"
        Then I should see page title "Insurance and Banking Software and Services | Eurobase International"
        Then I click on "loc_contactus_tab"
        Then I should see page title "Contact Us | Eurobase International Group"
        Then I scrolled to bottom
        Then I entered "Sachin" at "loc_firstName"
        Then I entered "Jadhav" at "loc_lastName"
        Then I entered "sachinjadhav@gmail.com" at "loc_email"
        Then I entered "07868686" at "loc_phoneNumber"
        And I entered "My Copmany" at "loc_companyName"
        And I select "Reinsurance" from dropdown at "loc_select_sector"
        And I entered "This is demo test text" at "loc_message_textbox"
        Then I click on "loc_submit_button"
        Then I should see "Thank you for your interest!" at "loc_success_msg"

