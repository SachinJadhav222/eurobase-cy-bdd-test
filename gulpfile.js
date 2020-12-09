const gulp = require('gulp');
const {src, series, parallel,dest,watch} = require('gulp');

function myName(){
  console.log('This is Gulp file from Function ===================>')
}

function copyFiles() {
    console.log('This is copy file ===================>')
    return src('cypress/locators/*.js').pipe(gulp.dest('cypress/gilpDestination'))
}



exports.default=myName;
exports.copyFiles=copyFiles;

gulp.task('myName1',(done)=>{
    console.log('This is Gulp Task file  May name 1 ===================>');
   // return src('.*.js').pipe(gulp.dest('./locators/gilpDestination'))

})

gulp.task('myName2',(done)=>{
    console.log('This is Gulp Task file Myname-2 ===================>');
   // return src('.*.js').pipe(gulp.dest('./locators/gilpDestination'))

})
gulp.task('myName3',['myName2','myName1'],(done)=>{
    console.log('This is Gulp Task file- myName-3 ===================>');
   

})
