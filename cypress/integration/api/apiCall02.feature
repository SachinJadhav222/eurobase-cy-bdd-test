Feature: Api call using cucumber

    As user
    I want to verify
    Response of the Api

    Scenario: Api call to the end point
        Given I make "GET" request to the "baseUrl" with the endpoint "posts"
        Then I should see response status code "200"
        Then I should see response body to have lenght of "100"

Scenario: Api call to the end point
        Given I make "POST" request to the "baseUrl" with the endpoint "posts" with JSON data
        Then I should see response status code "201"
       # Then I should see response body to have lenght of "101"

   
