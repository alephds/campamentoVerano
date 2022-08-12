/* eslint-disable import/order */
const knex = require('knex')({
    client: 'mysql',
    connection: {
        database: process.env.DATABASE,
        host: process.env.HOST,
        password: process.env.PASSWORD,
        port: process.env.DB_PORT,
        user: process.env.DB_USER,
    },
});

module.exports = class {
    static db = knex;

    static async rawQuery(query) {
        const r = await this.db.raw(query);
        return r[0];
    }
};
