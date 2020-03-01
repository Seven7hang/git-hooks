#Node.js Applications
##Hello World
1) server.js
    1. defines a web app using the Express.js framework
2) package.json
    1. describes your app and its dependencies
	2. With your new package.json file, run npm install. If you are using npm version 5 or later, this will generate a package-lock.json file which will be copied to your Docker image
3) Dockerfile
	1. specifies what to build and how to run the image
4) .dockerignore
	1. This will prevent your local modules and debug logs from being copied onto your Docker image and possibly overwriting modules installed within your image.
5) Build and run
	1. docker build -t <your username>/node-web-app .
	2. docker run -p 49160:8080 -d <your username>/node-web-app