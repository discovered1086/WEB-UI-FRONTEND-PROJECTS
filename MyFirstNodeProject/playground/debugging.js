//We use the command below for running the node.js code in debug mode

//node inspect debugging.js

//to debug in chrome browser, the following command should be used.

//node --inspect-brk debugging.js

//What it means is by adding the inspect not as a command but as a flag, we're asking node to not open the debugger in the command line itself.

//brk means start the breakline at the very beginning.

//Blue button in chrome's dev tool is equivalent to 'c' command

//Remember the below points
//n is equivalent to F8 in java (going to the next line)
//c is equivalent to F9 in java (jumping to the next debug point)

var person = {
    name: 'Kingshuk',
    yearOfBirth: 1989,
    calculateAge: function () {
        return 2017 - this.yearOfBirth;
    }
}

debugger; //Using this command we can set a debug point just like we have done in java using editors.
//This way we can choose where we want to go for debugging and we don't have to use n for iterating over each line.

//So when we use c it won't jump to the end of the program but will jump to the debug point. Just like F9 in java jumps to the next debug point. an below is the result

//---------------------------------------------------------

//Kingshuks-MacBook-Pro:debugging kingshuk$ node inspect debugging.js
//< Debugger listening on ws://127.0.0.1:9229/dfa9a3e4-aed8-4219-9178-003e76492e67
//< For help see https://nodejs.org/en/docs/inspector
//< Debugger attached.
//Break on start in debugging.js:1
//> 1 (function (exports, require, module, __filename, __dirname) { var person = {
//  2     name: 'Kingshuk',
//  3     yearOfBirth: 1986,
//debug> c
//break in debugging.js:9
//  7 }
//  8 
//> 9 debugger; //Using this command we can set a debug point just like we have done in java using editors.
// 10 //This way we can choose where we want to go for debugging and we don't have to use n for iterating over each line.
// 11 
//debug> n
//break in debugging.js:14
// 12 //So when we use c it won't jump to the end of the program but will jump to the debug point. Just like F9 in java jumps to the next debug point.
// 13 
//>14 console.log(person.calculateAge());
// 15 
// 16 //For debugging we need to start with the command
//debug> 
//--------------------------------------------------------

console.log(person.calculateAge());

//For debugging we need to start with the command
//node inspect debugging.js

//Two important commands here are 'n' and 'c'
//'n' takes us to the next line of the program and 'c' continues
//through the programme without pausing at each line

//Another important command is 'repl' that's just what chrome console uses. Read, execute, print,loop

//Below is what happens when we do this

//< Debugger listening on ws://127.0.0.1:9229/fb29b4f2-650b-40dc-b724-fa89d435a02d
//< For help see https://nodejs.org/en/docs/inspector
//< Debugger attached.
//Break on start in debugging.js:1
//> 1 (function (exports, require, module, __filename, __dirname) { var person = {
//  2     name: 'kingshuk',
//  3     yearOfBirth: 1986,
//debug> list(10)
//> 1 (function (exports, require, module, __filename, __dirname) { var person = {
//  2     name: 'kingshuk',
//  3     yearOfBirth: 1986,
//  4     age: function () {
//  5         return 2017 - this.yearOfBirth;
//  6     }
//  7 };
//  8 
//  9 console.log(person.age());
// 10 
// 11 });
//debug> n
//break in debugging.js:1
//> 1 (function (exports, require, module, __filename, __dirname) { var person = {
//  2     name: 'kingshuk',
//  3     yearOfBirth: 1986,
//debug> n
//break in debugging.js:9
//  7 };
//  8 
//> 9 console.log(person.age());
// 10 
// 11 });
//debug>
