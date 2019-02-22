console.log('Hello World..!!');

var currentYear=2017;

var Kingshuk={
  name: 'Kingshuk',
  age: function (birthYear){
    return currentYear-birthYear;
  }
};

console.log(Kingshuk.name +'\'s age is '+Kingshuk.age(1986));
