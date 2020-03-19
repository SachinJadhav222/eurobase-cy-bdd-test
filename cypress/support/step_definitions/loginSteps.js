import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'
const element = require('../../locators/elements')

Given('I visit {string}', URL => {
	cy.visit(URL)
})

Then('I entered {string} at {string}', (expectedValue, selector) => {
	cy.get(element[selector]).type(expectedValue)
})

Then('I click on {string}', selector => {
	cy.get(element[selector]).click()
})

Then('I shloud see home page', () => {
	cy.get('#account_summary_tab').should('be.visible')
})

Then('I should see {string} at {string}', (expectedValue, selector) => {
	cy.get(element[selector])
		.should('be.visible')
		.and('contain', expectedValue)
})
