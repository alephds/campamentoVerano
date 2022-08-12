module.exports = {
    env: {
        browser: true,
        es2021: true,
        node: true,
    },
    extends: [
        'airbnb-base',
    ],
    parserOptions: {
        ecmaVersion: 'latest',
    },
    rules: {
        'import/no-unresolved': 'off',
        'max-len': 'off',
        'no-alert': 'off',
        'no-console': 'off',
        'no-param-reassign': 'off',
        'no-plusplus': ['error', { allowForLoopAfterthoughts: true }],
        'no-return-await': 'off',
        'no-undef': 'off',
        indent: 'off',
    },
};
