const merge = require('deepmerge')
const ele1 = require('../locators/loc01.loginPage')
const ele2 = require('../locators/loc02.homePage')
const ele3 = require('../locators/loc03.contactUsPage')
const ele4 = require('../locators/loc04.mystoreHomePage')




const locators = merge.all([ele1, ele2,ele3,ele4])

module.exports = {
	locators: locators,
}
