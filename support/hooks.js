const { setWorldConstructor } = require('cucumber');
const { CustomWorld } = require('./world'); // Import the CustomWorld class

setWorldConstructor(CustomWorld);