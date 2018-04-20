# Hotels UI

Simple UI for the hotels service.

## Dev & Build instructions
* Clone the project, cd to `hotels-ui`
* Run `npm install`
* Run `DEBUG=hotels-ui:* npm start`
* UI is available on localhost:3000

## How to use?
* Click on the link in the footer, set the URL
* Click Go

## Docker Build Instructions
* Run `docker build -t hotels-ui`
* Run `docker run -p 3999:3000 -d hotels-ui`
* UI is available on localhost:3999
