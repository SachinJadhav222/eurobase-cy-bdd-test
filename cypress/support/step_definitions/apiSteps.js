import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'
import { newUser1, newUser2, MAX_Code } from '../../test-data/apiTestData'
const apiPoints = require('../../config/endPoints')
let expectedResponse = null

Given(
	'I make request to {string} with the endpoint {string}',
	(baseUrl, endPoint) => {
		endPoint = apiPoints[baseUrl] + endPoint
		cy.request(endPoint).then(response => {
			cy.log(endPoint)
			expectedResponse = response
			expect(response.status).to.eq(200)
		})
	}
)

Given(
	'I make {string} request to the {string} with the endpoint {string}',
	(requestType, baseUrl, endPoint) => {
		//console.log("THIS IS FOR SONAR QUBE")
		endPoint = apiPoints[baseUrl] + endPoint
		cy.request(requestType, endPoint).then(response => {
			expectedResponse = response
			expect(response.status).to.eq(200)
		})
	}
)

Given(
	'I make {string} request to the {string} with the endpoint {string} with JSON data',
	(requestType, baseUrl, endPoint) => {
		endPoint = apiPoints[baseUrl] + endPoint
		cy.request(requestType, endPoint, newUser1).then(response => {
			expectedResponse = response
			expect(response.status).to.eq(201)
		})
	}
)

Then('I should see response status code {string}', statusCode => {
	cy.log(MAX_Code)
	expect(expectedResponse.status).to.eq(Number(statusCode))
})
Then('I should see response body to have {string}', bodyCo => {
	expect(expectedResponse.body).to.eq(bodyCo)
})

Then('I should see response body to have lenght of {string}', bodyLength => {
	cy.log(bodyLength)
	expect(expectedResponse.body).to.have.length(Number(bodyLength))
})

Then(
	'I should see response body to have property {string} and value {string}',
	(property, value) => {
		expect(expectedResponse.body[property]).to.eq(value)
		cy.log(expectedResponse.header)
	}
)
