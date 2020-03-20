import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'

const endPoint = 'https://jsonplaceholder.typicode.com/posts'
let responseRecieved = null

Given('I make request to the endpoint', () => {
	cy.request(endPoint).then(response => {
		responseRecieved = response
		expect(response.status).to.eq(200)
	})
})

Given('I make API request to the endpoint {string}',(endPoint)=>{
cy.request(endPoint).then(response => {
		responseRecieved = response
		expect(response.status).to.eq(200)
	})
})

Then('I should see response status code {string}',(statusCode) => {
	expect(responseRecieved.status).to.eq(Number(statusCode));
})
Then('I should see response body to have {string}',(bodyCo)=>{
expect(responseRecieved.body).to.eq(bodyCo)
}) 

Then('I should see response status code 200', () => {
	expect(responseRecieved.status).to.eq(200)
})

Then('I should see response body to have lenght of 100',()=>{
 expect(responseRecieved.body).to.have.length(100);
})


