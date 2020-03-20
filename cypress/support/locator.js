const merge = require('deepmerge');
const ele1=require('../locators/elements-01')
const ele2=require('../locators/elements-02')

//console.log(ele1,ele2)

const locators= merge.all([ele1,ele2]);
//console.log(locators);
//export {merge.all([ele1,ele2])}
module.exports={
    locators:locators
};