function getBaseUrl() {
    /* eslint-disable no-template-curly-in-string */
    let baseUlr = process.env.BASE_URL.replace(':${PORT}/', '');
    baseUlr = process.env.PORT > 0 && process.env.PORT !== '80' ? `${baseUlr}:${process.env.PORT}` : baseUlr;
    baseUlr += '/';
    return baseUlr;
}

module.exports = {
    getBaseUrl,
};
