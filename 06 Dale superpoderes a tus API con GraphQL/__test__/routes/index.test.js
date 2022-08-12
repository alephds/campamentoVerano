const request = require('supertest');
const app = require('root/app');

test('/', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toEqual(200);
});
