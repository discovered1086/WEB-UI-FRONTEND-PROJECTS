//var person = {
//    name: 'kingshuk'
//};
//
//console.log(JSON.stringify(person));
//console.log(person);
//console.log(typeof JSON.stringify(person));
//console.log(typeof person);
//
//var personJson = '{"name": "Deeksha"}';
//
//var personJsonObj = JSON.parse(personJson);
//
//console.log(personJson);
//console.log(personJsonObj);
//console.log(typeof personJson);
//console.log(typeof personJsonObj);

//----------------------------------------------------------
//const fileSystem = require('fs');
//
//var person = {
//    name: 'Kingshuk',
//    yearOfBirth: 1986,
//    age: function () {
//        2017 - this.yearOfBirth;
//    }
//}
//
//fileSystem.writeFileSync('json-test.json', JSON.stringify(person));
//
//var career = {
//    name: 'Kingshuk',
//    runs: 15000,
//    matchesPLayed: 330,
//    centuries: 89
//}
//
//var personReturned = fileSystem.readFileSync('json-test.json');
//
//console.log(JSON.parse(personReturned));
////console.log(personReturned.age());
//
//fileSystem.writeFileSync('json-test.json', JSON.stringify(career));

var value = JSON.parse("");
console.log(value);
