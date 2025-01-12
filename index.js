var cron = require('node-cron');
var { syncDB: syncer} = require('./tasks/sync-db');

console.log('Inicio de la aplicación');

cron.schedule('* * * * *', syncer);