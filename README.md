# nodejs Sample web server

### Copied from nodejs.org https://nodejs.org/en/docs/guides/nodejs-docker-webapp/ Thanks!

This is a very simple node web server. Demonstrates how to automate the setup of the
node dependencies and the packaging and building of the docker container.

To build this container:

    docker build -t node-web-app .

To run:

    docker stack deploy --compose-file docker-compose.yml xyz
 