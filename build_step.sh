#!/bin/bash

echo "Build script"

# add the commands here
# Install dependencies 
npm install  

# Check style
npm run eslint

# Build app
npm run build

# Run unit tests
npm run test

# Install Playwright Browsers
npx playwright install --with-deps

# Run Playwright tests
npm run test:e2e

# Upload report
npm run upload-report 