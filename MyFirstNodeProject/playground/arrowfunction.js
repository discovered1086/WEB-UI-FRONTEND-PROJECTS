//Arrow functions have issues when being used inside objects most of the time
//1. the usage of this keyword. Arrow functions don't bind the this keyword
//2. The usage of arrays of arguments using the 'arguments' keyword

//the return keyword is implicitly defined in the arrow function. So when it's just one expression we're dealing with and we just want to return that
//We can do it without the return keyword even
var person = {
    name: 'Kingsuk',
    yearOfBirth: 1986,
    age: () => 2017 - this.yearOfBirth, //ES6 arrow function
    myAge() {
        return 2017 - this.yearOfBirth; //ES6 function declaration inside object literals
    }
}

//console.log(person.age());
//console.log(person.myAge());

//If there's just one argument to the arrow function, we can even
//leave out the parenthesis that denotes the function
//age: yearOfBirth => 2017-yearOfBirth

//But when there's more than one or zero arguments , then we need to write the parenthesis. Check the below example

var person2 = {
    name: 'Deeksha',
    age: yearOfBirth => 2017 - yearOfBirth
}

//console.log(person2.age(1989));

//Arrow functions DO NOT bind a this keyword, the line 9 here results in a 'NaN' being returned

//Arrow functions also don't bind the arguments array. areguments keyword usage will return the global object's argument list, not the current functions arguments list
var person3 = {
    name: 'Amit',
    calculateBMI(height, weight) {
        console.log(arguments);
        return Math.round(weight / height);
    }
}

//console.log(person3.calculateBMI(1.65, 78));

//The same thing won't work with array functions

var person4 = {
    name: 'Mainak',
    calculateBMI: (height, weight) => {
        console.log(arguments);
        return Math.round(weight / height);
    }
}

console.log(person4.calculateBMI(1.65, 78));

//The above line prints the arguments list of the entire global object
