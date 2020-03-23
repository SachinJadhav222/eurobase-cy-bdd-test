const merge = require('deepmerge')
const ele1 = require('../locators/elements-01')
const ele2 = require('../locators/elements-02')
const ele3 = require('../locators/01.homePage')
const ele4 = require('../locators/02.contactUsPage')

const locators = merge.all([ele1, ele2,ele3,ele4])

module.exports = {
	locators: locators,
}
