#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=react-javascript-commonjs --title="React JavaScript CommonJS" --profile=ReactJavaScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/react-javascript-commonjs
mkdir -p ./apps/react-javascript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/react-javascript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/react-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/react-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/react-javascript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=react-javascript-systemjs --title="React JavaScript SystemJS" --profile=ReactJavaScript --moduleType=SystemJS --bundler=SystemJSBuilder --unitTestRunner=Karma --unitTestEngine=ChromeHeadless  --outputDirectory=./apps/react-javascript-systemjs
mkdir -p ./apps/react-javascript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/react-javascript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/react-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/react-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/react-javascript-systemjs

node unitejs/unitejs-cli/bin/unite configure --packageName=react-typescript-commonjs --title="React TypeScript CommonJS" --profile=ReactTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/react-typescript-commonjs
mkdir -p ./apps/react-typescript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/react-typescript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/react-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/react-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/react-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=react-typescript-systemjs --title="React TypeScript SystemJS" --profile=ReactTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --unitTestRunner=Karma --unitTestEngine=ChromeHeadless --outputDirectory=./apps/react-typescript-systemjs
mkdir -p ./apps/react-typescript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/react-typescript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/react-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/react-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/react-typescript-systemjs
