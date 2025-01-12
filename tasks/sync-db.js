
let sprint = 0;

const syncDB = () => {
    sprint++
    console.log('running a task every minute, sprint:', sprint);
    return sprint;
}


module.exports = {
    syncDB
}