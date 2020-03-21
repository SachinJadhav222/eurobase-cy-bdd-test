import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'
const locators= require('../locator').locators
const urls=require('../../config/urls');

Given('I visit {string}', URL => {
	cy.visit(urls[URL])
})

Then('I entered {string} at {string}', (expectedValue, selector) => {
	cy.get(locators[selector]).type(expectedValue)
})

Then('I click on {string}', selector => {
	cy.get(locators[selector]).click()
})

Then('I shloud see home page', () => {
	cy.get('#account_summary_tab').should('be.visible')
})

Then('I should see {string} at {string}', (expectedValue, selector) => {
	cy.get(locators[selector])
		.should('be.visible')
		.and('contain', expectedValue)
})
