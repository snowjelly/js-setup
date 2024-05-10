#! /usr/bin/bash

git init
echo "node_modules" > .gitignore
npm init
npm install --save-dev jest eslint-config-prettier webpack eslint-plugin-jest babel-jest @babel/core @babel/preset-env @types/jest webpack-dev-server
echo "module.exports = {
  presets: [['@babel/preset-env', {targets: {node: 'current'}}]],
};" > babel.config.js
npx eslint --init
echo 'Add "prettier" to the "extends" array in your .eslintrc.* file. Make sure to put it last, so it gets the chance to override other configs.'
echo 'OPTIONAL: Run this - npx eslint-config-prettier path/to/main.js'
echo 'Add "plugins": ["jest"] to .eslintrc and under "env": "jest/globals": true"'
