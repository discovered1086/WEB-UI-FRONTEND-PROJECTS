const fileSystem = require('fs');
const yrgs = require('yargs');
const file = './notes/note-app.json';


const notesWorker = require('./notes-worker.js');

//fileSystem.appendFileSync('printing_process.txt',process);

//console.log(process.argv);

//The property of the process object that we're looking for is argv
//Argv is short for arguments vector. it's more like an array of arguements
//passed in through the command line

//const yArguements = yrgs.argv;

//Let's expand whar we have learnt about yargs and then set command
//details and help. Advanced yargs kicking in baby..!!
//var commandEntered = process.argv[2];

//command takes in 3 arguements, the name of the command, a description of what the command does and then required arguments
//demand is what makes it required.

//The object after the description is the option object
var optionsObject1 = {
    title: {
        describe: 'This will be the title of your document',
        demand: true
    },
    date: {
        describe: 'This is the date when the note was written',
        demand: true
    },
    body: {
        describe: 'This is your actual note',
        demand: true
    }
};

var optionsObject2 = {
    title: {
        describe: 'This will be the title of your document',
        demand: true
    },
    date: {
        describe: 'This is the date when the note was written',
        demand: true
    }
};

const yArguements = yrgs.command('add note',
        'Please use this to add a note here', optionsObject1)
    .command('list notes',
        'Please use this to read all notes')
    .command('delete note',
        'Please use this to delete a note', optionsObject2)
    .command('update note',
        'Please use this to modify a note', optionsObject1)
    .command('read note',
        'Please use this to read a particular note', optionsObject2)
    .help()
    .argv;


var command = yArguements._[0];


//console.log(process.argv);
console.log(yArguements);

//What yargs does is, create an object with _ property where commands
//are stored. After that anything with the -- sign will be interpreted as
//new properties

//So both of the below command line arguements are valid
//node user_note.js "list notes" --doc_name="first-note.txt"
//AND
//node user_note.js  "list notes" --doc_name first-note.txt

if (command === 'add note') {
    console.log('Adding new note....');
    notesWorker.addNote(file, yArguements.title, yArguements.date, yArguements.body);
} else if (command === 'list notes') {
    console.log('Listing all notes....');
    notesWorker.getAllNotes(file);
} else if (command === 'delete note') {
    console.log('Removing a note....');
    notesWorker.deleteNote(file, yArguements.title, yArguements.date);
} else if (command === 'update note') {
    console.log('Updating the note....');
    notesWorker.updateNote(file, yArguements.title, yArguements.date, yArguements.body);
} else if (command === 'read note') {
    console.log('Reading the note....');
    notesWorker.readNote(file, yArguements.title, yArguements.date);
} else {
    console.log('Please enter a command to perform an action');
}

//Now we need to get further information on which note/file to update/add/
//remove. we're going to use the third party module called yargs for
//Validating and parsing all kinds of inputs
