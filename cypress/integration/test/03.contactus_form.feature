Feature: Contact form
    As user
    I wat to see
    home page of Eurobase

    Scenario: Contact us successful form fill
        Given I visit "eurobaseWeb"
        Then I should see page title "Insurance and Banking Software and Services | Eurobase International"
        Then I click on "loc02_contactus_tab"
        Then I should see page title "Contact Us | Eurobase International Group"
        Then I scrolled to bottom
        Then I entered "Sachin" at "loc03_firstName"
        Then I entered "Jadhav" at "loc03_lastName"
        Then I entered "sachinjadhav1234@gmail.com" at "loc03_email"
        Then I entered "07868686" at "loc03_phoneNumber"
        And I entered "My Copmany" at "loc03_companyName"
        And I select "Reinsurance" from dropdown at "loc03_select_sector"
        And I entered "This is demo test text" at "loc03_message_textbox"
        Then I click on "loc03_submit_button"
        Then I should see "Thank you for your interest!" at "loc03_success_msg"

