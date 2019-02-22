//The whole point of require is to have the modules loaded so that they can be used directly
//require can be used to fetch and load modules and also our own files and libraries
//The below line tells node that we're going to fetch all the contents of the fs module
const fileSystem = require('fs');

const os=require('os');

//The below call throws a warning, down below are two options to get rid of this warning

//fileSystem.appendFile('my-node-file1.txt', 'Write my name there');

//appendFile is an asynchronous function, either we need to use the synchronous version or we need
//to write a callback function.
//append file just creates a new file if none by the name exists or just adds the data provided, to the
//file, if one exists by that name

//Callback function
/*fileSystem.appendFile('my-node-file2.txt', 'Write my name there \n', function (err) {
    if (err) {
        console.log('something went wrong');
    }
})*/

//console.log(os.userInfo());

//Synchronous version
fileSystem.appendFileSync('my-node-file.txt', 'Write my name there ' +os.userInfo().username+ '\n');

fileSystem.appendFileSync('my-node-file.txt', `Write my name there ${os.userInfo().username}\n`);
