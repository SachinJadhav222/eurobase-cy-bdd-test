const merge = require('deepmerge')
const loc01 = require('../locators/loc01.loginPage')
const loc02 = require('../locators/loc02.homePage')
const loc03 = require('../locators/loc03.contactUsPage')
const loc04 = require('../locators/loc04.mystoreHomePage')




const locators = merge.all([loc01, loc02,loc03,loc04])

module.exports = {
	locators: locators,
}
