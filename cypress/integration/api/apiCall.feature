Feature: Api call using cucumber

    As user
    I want to verify
    Response of the Api

    Scenario: Api call to the end point
        Given I make request to the endpoint
        Then I should see response status code 200
        Then I should see response body to have lenght of 100

    Scenario: Api call using parameters
        Given I make API request to the endpoint "https://jsonplaceholder.typicode.com/posts/1"  
        Then I should see response status code "200"
      # Then I should see response body to have "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"


   