import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'
const locators= require('../locator').locators
const urls=require('../../config/urls');

Given('I visit {string}', URL => {
	cy.visit(urls[URL])
})

Then('I entered {string} at {string}', (expectedValue, selector) => {
	cy.getSelector(selector).type(expectedValue)
})

Then('I click on {string}', selector => {
	cy.getSelector(selector).click()
})

Then('I shloud see home page', () => {
	cy.get('#account_summary_tab').should('be.visible')
})

Then('I should see {string} at {string}', (expectedValue, selector) => {
	cy.getSelector(selector)
		.should('be.visible')
		.and('contain', expectedValue)
})

Then('I should see page title {string}',(expectedValue)=>{
    cy.title().should('eq', expectedValue)
})

Then ('I click on xpath {string}',(selector)=>{
	//cy.xpath('//a[contains(text(),"Contact us")]').click();
//cy.xpath(locators[selector]).click();
cy.getSelector(selector).click();
})
