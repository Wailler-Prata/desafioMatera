const assert = require('assert')
const { Given, When, Then } = require('@cucumber/cucumber')
const axios = require('axios');
const chai = require('chai');
const expect = chai.expect;

Given('As long as you have at least {int} registered breeds', async function (limit) {
    await axios.get(`https://catfact.ninja/breeds?limit=${limit}`)
    .then(response =>{
        expect(response.data.data.length).to.equal(limit)    
    })
})

let requestResponse;
When('execute a request by GET method with a limit equal to {}', async (limit) => {
    await axios.get(`https://catfact.ninja/breeds?limit=${limit}`,
        {
            validateStatus: function (status) {
                return status >= 200
            }
        })
    .then( (response) =>{
        requestResponse = response
    })
})

Then('{int} breeds must be returned', (limit) => {
    expect(requestResponse.data.data.length).to.equal(limit)
})

Then('The http status code must be {int}', function (statusCode) {
    expect(requestResponse.status).to.equal(statusCode)
})

Then('Shouldn\'t return any breed', function () {
    expect(requestResponse.data).to.not.have.property('data')  
})