var calculateAge = (age, callback) => {
    console.log('Am inside the calculateAge function');

    setTimeout(() => {
        callback(age);
    }, 3000);

};


//Either this
var printAgeWiseValues = (ageOfTheGuy) => {
    if (ageOfTheGuy >= 30 && ageOfTheGuy <= 39) {
        console.log('This guy is in his thirties');
    } else if (ageOfTheGuy >= 20 && ageOfTheGuy <= 29) {
        console.log('This guy is in his twenties');
    } else if (ageOfTheGuy >= 40) {
        console.log('This guy is OLD');
    }
}

calculateAge(30, printAgeWiseValues);

//OR this

/*calculateAge(30, printAgeWiseValues);

function printAgeWiseValues(ageOfTheGuy) {
    if (ageOfTheGuy >= 30 && ageOfTheGuy <= 39) {
        console.log('This guy is in his thirties');
    } else if (ageOfTheGuy >= 20 && ageOfTheGuy <= 29) {
        console.log('This guy is in his twenties');
    } else if (ageOfTheGuy >= 40) {
        console.log('This guy is OLD');
    }
}*/

//OR this
/*calculateAge(30, (ageOfTheGuy) => {
    if (ageOfTheGuy >= 30 && ageOfTheGuy <= 39) {
        console.log('This guy is in his thirties');
    } else if (ageOfTheGuy >= 20 && ageOfTheGuy <= 29) {
        console.log('This guy is in his twenties');
    } else if (ageOfTheGuy >= 40) {
        console.log('This guy is OLD');
    }
});*/
