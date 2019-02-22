const yargs = require('yargs');

const geoCodeWorker = require('./weather-app-worker.js');

const forcaster = require('./forcast-weather.js');


const user_input = yargs.options({
        addr: {
            demand: true,
            alias: 'address',
            describe: 'Provide your address here',
            string: true //This tells yargs to always parse the user input for addr to a string and not something else
        }
    })
    .help()
    .argv;

//console.log(user_input);

//The callback function is going to get called after the request comes back.
geoCodeWorker.findGeoLocation(user_input.addr, (errorMessage, geoLocation) => {
    if (errorMessage) {
        console.log(errorMessage);
    } else {
        console.log(JSON.stringify(geoLocation, undefined, 3));
        forcaster.getWeatherInfo(geoLocation.lattitude, geoLocation.longitude, (errorMessage, weatherInfo) => {
            if (errorMessage) {
                console.log(errorMessage);
            } else {
                console.log(`Right now it's ${weatherInfo.summary} in ${geoLocation.address}`);
                console.log(`Current temperature is  ${weatherInfo.temperature} F but it feels like ${weatherInfo.feelsLike}`);
            }
        });
    }
});
