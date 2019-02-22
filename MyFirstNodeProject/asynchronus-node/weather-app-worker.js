const my_request = require('request');


var getGeoLocation = (input_address, fnCallback) => {
    //we're gonna make use of the below methods from the global object

    //- encodeURLComponent
    //-decodeURLComponent
    var address = encodeURIComponent(input_address);

    //The first argument to the request function is an object with options and the second one is a callback function that gets called when the request comes back with data from the https call

    //The options object specifies the unique information about our request

    //The option json specifies if the returned information is going 
    //to be a json object. If it's set to true then it's automatically converted to javascript object and we don't
    //have to do that ourselves
    my_request({
        url: `https://maps.googleapis.com/maps/api/geocode/json?address=${address}`,
        json: true
    }, (error, response, body) => {
        //console.log(JSON.stringify(body, undefined, 3));
        //console.log(response && response.statusCode);

        //if (error == null) { We can also check if the error object exists
        //A thing or two about the status property of the body object.
        //It's specific to google maps API. may not be there in other APIs
        if (!error) {
            if (response.statusCode === 200) {
                if (body.status !== 'ZERO_RESULTS') {
                    fnCallback(undefined, {
                        address: body.results[0].formatted_address,
                        lattitude: body.results[0].geometry.location.lat,
                        longitude: body.results[0].geometry.location.lng
                    })
                } else {
                    //console.log(JSON.stringify(response, undefined, 3));
                    fnCallback('The requested address could NOT be found');
                }

                //console.log(JSON.stringify(response, undefined, 3));
            } else {
                fnCallback('Google API could NOT respond properly');
            }
        } else {
            fnCallback('The request could NOT be completed due to an error');
            console.log(error);
            //console.log(JSON.stringify(response, undefined, 3));
        }


    });


    //What makes an HTTP request??

    //The error in the callback function is not the status code of the response

    //It's rather the error that may occur while making the http request or anything wrong with our code that makes the http request.

};



module.exports = {
    findGeoLocation: getGeoLocation
}
