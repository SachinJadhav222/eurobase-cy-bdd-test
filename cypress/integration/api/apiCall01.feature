Feature: Api call using cucumber

    As user
    I want to verify
    Response of the Api

    Scenario: Api call to the end point
        Given I make request to "baseUrl" with the endpoint "posts"
        Then I should see response status code "200"
        Then I should see response body to have lenght of "100"

    Scenario: Api call using parameters Post
        Given I make request to "baseUrl" with the endpoint "posts/1"
        Then I should see response status code "200"

    Scenario: Api call using parameters Photos
        Given I make request to "baseUrl" with the endpoint "photos"
        Then I should see response status code "200"
        Then I should see response body to have lenght of "5000"
    # Then I should see response body to have "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"

    Scenario: Api call using parameters User
        Given I make request to "baseUrl" with the endpoint "users/2"
        Then I should see response status code "200"
        Then I should see response body to have property "name" and value "Ervin Howell"
        And  I should see response body to have property "email" and value "Shanna@melissa.tv"

