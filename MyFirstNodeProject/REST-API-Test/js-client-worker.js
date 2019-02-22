const my_request = require('request');



var processClaimResult = (claimId, callBackFunction) => {
    my_request({
        url: `http://localhost:7001/InsuranceClaimProject/services/ClaimServices/claimInfo/${claimId}`,
        json: true
    }, (error, response, body) => {
        if (!error) {
            if (response.statusCode === 200) {
                callBackFunction(undefined, body);
            } else {
                callBackFunction('Somthing went wrong');
            }
        } else {
            callBackFunction('Something went wrong');
        }
    });
};


var updateInsuredDetails = (insuredData, callBackFunction) => {

    var headers = {
        'Content-Type': 'application/json',
        'Accept-Charset': 'UTF-8',
    };

    var options = {
        url: 'http://localhost:7001/InsuranceClaimProject/services/ClaimServices/addInsured',
        headers: headers,
        formData: insuredData
    };

    my_request.put(options, (error, response, body) => {
        if (!error) {
            if (response.statusCode === 200) {
                callBackFunction('Update done successfully');
            } else {
                callBackFunction('Somthing went wrong with the response');
            }
        } else {
            callBackFunction(error);
        }
    });
};

module.exports = {
    processClaimResult,
    updateInsuredDetails
};
