//Promise is a javascript function introduced in javascript library since ES6. This makes our asynchronous calls a lot easier and takes care of all asynchronous code.

//Promise takes two arguements, resolve and reject. This function is making a promise. If promise is fulfilled, it's going to resolve our request or it's going to rejects the request

//The resolve and reject are also functions. A promise has only two states, fulfilled or rejected.

var thePromise = new Promise((resolve, reject) => {
    resolve('Everything worked just fine');
});
