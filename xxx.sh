#!/bin/bash


json=$(echo ',
  "video": true,
  "reporter": "mochawesome",
  "reporterOptions": {
    "reportDir": "cypress/report/mochawesome-report",
    "overwrite": false,
    "html": false,
    "json": true
  },
  "screenshotsFolder": "mochawesome-report/assets"')

  sed -i '$i'"$(echo ${json})" cypress.json