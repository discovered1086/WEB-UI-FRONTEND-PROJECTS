const fileSystem = require('fs');


//Method: 1
// module.exports.addNote=function(docName, textToAdd){
//   fileSystem.appendFileSync(docName,textToAdd);
// };

//Method 2.1: Instead of exporting individual functions and variables
//We're putting them in an object and exporting the same object
// module.exports = {
//   addNote: function(docName, textToAdd){
//       fileSystem.appendFileSync(docName,textToAdd);
//   }
// };

//Method 2.2: Here we're making use of the ES6 feature of just declaring
//the property of the object and nothing else.
//This is legal in ES6 where the propety name and the value of the
//property are identical
// function addNote(docName, textToAdd){
//   fileSystem.appendFileSync(docName,textToAdd);
// }
//
// module.exports ={
//   addNote
// };

//Method 2.3: Hope you're getting that here we're doing the same thing as
//method 2.2, just in a bit different way
var addNote = function (docName, noteTitle, dateAdded, noteToAdd) {

    var shouldAddNote = true;
    console.log(`adding a note in the document  ${docName}`);
    //fileSystem.appendFileSync(docName, textToAdd);
    var noteToSave = {
        title: noteTitle,
        date: dateAdded,
        note: noteToAdd,
        author: 'Kingshuk'
    };

    debugger;

    //var jsonObject = JSON.stringify(noteToSave);
    //Read the note file and then populate the array if it exists.
    //Here we have another agenda. We have to make sure, no two notes have the same title and date because these two parameters should uniquely identify a note.

    var notesList = readNotesFunction(docName);

    //There are 3 ways of doing it, especially the filter and flag part to check if a note with the title and the date already exists in the file

    //Method 1: Conventional programming logic

    /*for (var i = 0; i <= notesArray.length; i++) {
        if (notesArray[i].title === noteToSave.title &&
            notesArray[i].date === noteToSave.date) {
            shouldAddNote = false;
        }
    }

    if (shouldAddNote) {
        notesArray.push(noteToSave);

        fileSystem.writeFileSync(docName, JSON.stringify(notesArray));
    } else {
        console.log('A note with this title and date already exists.');
    }*/

    //----------------------------------
    //Method 2: Using the array filter method
    //Instead of looping through the array, we can simply use the filter function of array

    /*var duplicateArray = notesArray.filter(function (note) {
        return (note.title === noteToSave.title &&
            note.date === noteToSave.date)
    });

    if (duplicateArray.length > 0) {
        console.log('A note with this title and date already exists.');
    } else {
        notesArray.push(noteToSave);

        fileSystem.writeFileSync(docName, JSON.stringify(notesArray));
    }*/

    //Method 3: The better way is to write the callback function using ES6. This is perfectly valid using ES6 arrow functions.
    //When we have one single expression in the function, we can do this. 
    //There should NOT be any semi colons after the expression here
    var duplicateArray = getMatchingNotes(notesList, noteToSave.title, noteToSave.date);

    if (duplicateArray.length > 0) {
        console.log('A note with this title and date already exists.');
    } else {
        notesList.push(noteToSave);

        writeNotes(docName, notesList);
    }
}


var getAllNotes = function (docName) {
    console.log(`getting all the notes in the document ${docName}`);


    var notesArray = readNotesFunction(docName);

    if (notesArray.length === 0) {
        console.log('There are no notes to show');
    } else {
        printNotes(notesArray);

    }
}

var deleteNote = function (docName, title, date) {
    console.log(`deleting the note  ${docName}`);

    var notesArray = readNotesFunction(docName);
    var updatedNotesArray = getNonMatchingNotes(notesArray, title, date);

    if (notesArray.length > 0) {
        if (notesArray.length !== updatedNotesArray.length) {
            writeNotes(docName, updatedNotesArray);
            console.log(`Note with title - "${title}" written on ${date} has been deleted`);
        } else {
            console.log(`Could not find the note to delete`);
        }

    } else {
        console.log(`There are no notes to delete`);
    }
}

//Below is what we call arrow function, just another way of declaring a function
var readNote = (docName, title, date) => {
    console.log(`reading note from document ${docName}`);

    //Read all notes first and get matching note (s)
    var allMatchingNotes = getMatchingNotes(readNotesFunction(docName), title, date);

    //return the matching note(s) to the calling function.For now
    //Let's just print it/them here
    if (allMatchingNotes.length > 0) {
        printNotes(allMatchingNotes);
    } else {
        console.log(`No matching notes found for the information provided`);
    }
}


var updateNote = (docName, title, date, note) => {
    console.log(`updating the note ${title} in the document ${docName}`);

    /*var newNote = {
        title,
        date,
        note,
        author: 'Kingshuk'
    };*/

    var allNotes = readNotesFunction(docName);
    var theNote = getMatchingNotes(allNotes, title, date)[0];


    if (allNotes.length === 0) {
        console.log('There are no notes to update.');
    } else {
        if (theNote) {
            theNote.note = note;
            writeNotes(docName, allNotes);
        } else {
            console.log(`No matching notes found for the information provided`);
        }

    }

}

var readNotesFunction = (docName) => {
    var notesList = [];

    try {
        var existingString = fileSystem.readFileSync(docName);
        notesList = JSON.parse(existingString);
    } catch (e) {
        console.log('Something went wrong while reading notes ' + e);
    }
    debugger;
    return notesList;
};

var writeNotes = (docName, notesList) => {
    fileSystem.writeFileSync(docName, JSON.stringify(notesList));
};

var getMatchingNotes = (notesList, title, date) => {
    return notesList.filter((note) =>
        note.title === title &&
        note.date === date
    );
};

var getNonMatchingNotes = (notesList, title, date) => {
    return notesList.filter((note) =>
        note.title !== title &&
        note.date !== date
    );
}

var printNotes = (notesArray) => {
    console.log('-------------------------------');
    var noteIndex = 1;
    /*for (var i = 0; i < notesArray.length; i++) {
        var note = notesArray[i];
        var noteIndex = i + 1;

        //Modified from ES5 to ES6 syntax for console log
        console.log(`Note # ${noteIndex}  by ${note.author}`);
        console.log('__________________');
        console.log(`Note title -  ${note.title} \n`);
        console.log(`Note content - ${note.note}  \n`);
        console.log(`Note written on -  ${note.date} \n`);
        console.log('-------------------------------');
    }*/

    //Replacing the conventional for loop with a for each loop
    //for each accepts a call back function that'll be called for each item of the array.
    //This helps a great deal to avoid the boiler plate code for
    //iterating over notes
    notesArray.forEach((theNote) => {
        console.log(`Note # ${noteIndex}  by ${theNote.author}`);
        console.log('__________________');
        console.log(`Note title -  ${theNote.title} \n`);
        console.log(`Note content - ${theNote.note}  \n`);
        console.log(`Note written on -  ${theNote.date} \n`);
        console.log('-------------------------------');
        noteIndex++;
    });
}

module.exports = {
    addNote,
    getAllNotes,
    deleteNote,
    readNote,
    updateNote
};

/****KNOWLEDGE-CRACKERS: In javascript if nothing's returned from a function that's supposed to return something, undefined gets returned automatically

The below condition fails if the object being checked is undefined. In the below code the object is a, which hasn't been
initialized, so it's undefined
    var a;
    if(a){

    }
****/
