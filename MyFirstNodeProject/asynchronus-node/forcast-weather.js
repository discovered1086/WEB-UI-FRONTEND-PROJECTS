const request = require('request');

const secretKey = '82f60752b28422303503790c07d84909';

var getWeatherInfo = (latitude, longitude, callback) => {
    request({
        url: `https://api.darksky.net/forecast/${secretKey}/${latitude},${longitude}`,
        json: true
    }, (error, response, body) => {
        if (!error) {
            if (response.statusCode === 200) {
                callback(undefined, {
                    summary: body.currently.summary,
                    temperature: body.currently.temperature,
                    feelsLike: body.currently.apparentTemperature
                })
            } else {
                callback('The weather information was not found for this location');
            }
        } else {
            callback('The request for the weather information could not be made successfully');
        }

    });
}

module.exports = {
    getWeatherInfo
};
