console.log('Starting note.js app....!!');

//We're now going to use a variable that's available by default in all of
//our files. it's 'module'. Let's find out what it really is
//console.log(module);

//Module object has an object inside it, which is called exports. Using this we can export
//Functions, variables and objects to the calling javascript file
var currentYear=2017;

var Kingshuk={
  name: 'Kingshuk',
  age: function (birthYear){
    return currentYear-birthYear;
  }
};

module.exports.person=Kingshuk;

//Below is what we call an arrow function, which is equivalent to the anonymous function call
module.exports.myScore= ()=>{
return '172';
}

module.exports.addNumbers=function (a, b){
return a+b;
}
