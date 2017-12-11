#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=react-javascript --title="React JavaScript" --profile=ReactJavaScript --outputDirectory=./apps/react-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-javascript

node unitejs/unitejs-cli/bin/unite configure --packageName=react-typescript-amd --title="React TypeScript CommonJS" --profile=ReactTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/react-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=react-typescript-systemjs --title="React TypeScript SystemJS" --profile=ReactTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --unitTestRunner=Karma --unitTestEngine=ChromeHeadless --outputDirectory=./apps/react-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-typescript-systemjs
