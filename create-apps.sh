#!/bin/bash
set -e

node unitejs/cli/bin/unite configure --packageName=react-javascript --title="React JavaScript" --profile=ReactJavaScript --outputDirectory=./apps/react-javascript
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-javascript

node unitejs/cli/bin/unite configure --packageName=react-typescript-amd --title="React TypeScript CommonJS" --profile=ReactTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/react-typescript-commonjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-typescript-commonjs

node unitejs/cli/bin/unite configure --packageName=react-typescript-systemjs --title="React TypeScript SystemJS" --profile=ReactTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/react-typescript-systemjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/react-typescript-systemjs

