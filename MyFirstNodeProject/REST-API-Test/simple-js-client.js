const yargs = require('yargs');

const notesWorker = require('./js-client-worker.js');

const user_input = yargs.options({
        claimId: {
            demand: true,
            alias: 'claimId',
            describe: 'Provide your claim Id here',
            string: true //This tells yargs to always parse the user input for addr to a string and not something else
        }
    })
    .help()
    .argv;

var insuredData = {
    insuredId: 1,
    firstName: 'Deeksha',
    lastName: 'Banerjee',
    emailAddress: 'deeksha.jiya@gmail.com',
    ssn: '683-85-3655'
}

/*notesWorker.processClaimResult(user_input.claimId, (errorMessage, claimInfo) => {
    if (errorMessage) {
        console.log(errorMessage);
    } else {
        console.log(`The name of the insured is ${claimInfo.claimInsured.firstName} ${claimInfo.claimInsured.lastName}`);
    }
});*/

notesWorker.updateInsuredDetails(JSON.stringify(insuredData), (message) => {
    console.log(message);
});

//console.log(insuredData);
//console.log(JSON.stringify(insuredData));
