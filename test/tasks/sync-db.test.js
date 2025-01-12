const { syncDB } = require("../../tasks/sync-db");

describe('Pruebas del sync-db.js', () => {
    test('revisar el número de sprint del syncDB task sea 2', () => {
        let sprint = 0;
        sprint = syncDB();
        sprint = syncDB();
        expect( sprint ).toBe( 2 );
    });
});

