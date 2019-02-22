//Below in require we always have to use a relative file path, relative to
//where the current file is
const fileSystem = require('fs');
const notes=require('./note.js');

//console.log(`My name is ${notes.person.name} and I am ${notes.person.age(1986)} years old`);
// fileSystem.appendFileSync('my-node-file.txt', `My name is ${notes.person.name} and I am ${notes.person.age(1986)} years old and my score is ${notes.myScore()}`);
console.log(`The sum of two numbers is ${notes.addNumbers(56,75)}`);
