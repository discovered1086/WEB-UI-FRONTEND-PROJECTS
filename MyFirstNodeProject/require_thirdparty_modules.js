//Now we're going to practice the require on third party modules from the npm package
//We ran a command from the terminal 'npm -v' that printed the version
//of the npm package we have in our system, in the terminal

//Now we're running a command npm init in the terminal after we
//have navigated to the root of our project
//This will create a json file with the details of the third party modules
//that we intend to export

//After all the steps are executed, please check out
//the pacage.json file that's created in the root of the project folder. But at this moment
//the file does NOT have all the details of the third party module we intend to export

//We're going to start by installing a module called lodash. Check this out in the
//npmjs.com site
//Command to be used in the terminal is 'npm install lodash --save' the save is a flag which will update
//the contents of the package.json file
const lodashConst=require('lodash');

//The sequence of events that occur when the above line is typed is like this
//1. Node is first going to look for a core module by the name lodash
//2. The step 1 will be unsuccessful as there're no core module by the name
//lodash, then node is going to search under the node-modules folder
//that was created under the project folder when we installed the lodash, it'll
//find the module and then return any exports that the module provides
//and will then set the exports in the constant we just declared.

//Now we're ready to use the module and it's exports
// console.log(lodashConst.isString(1));
// console.log(lodashConst.isString('Kingshuk'));
// console.log(lodashConst.isString(true));

//Now let's check out another cool feature uniq.
//What it does is, removes duplicates from an array and
//returns the arrya of all unique values
var myArray=[2,3,4,5,5,6,6,9,2,3, 'Kingshuk', 'Deeksha', 'Kingshuk'];

console.log(lodashConst.uniq(myArray));

// Once the package.json is created and we can simply delete the
// node modules folder as all we have to do to get it back is run the command
// npm install without any parameter after that.
//
// When the npm install command is run without any parameters, it'll
// look at the package.json and install the dependencies from there.
