Below is an example of a simple web server implemented using Node.js. 

Create a project folder (e.g., simple-webserver).
Open a terminal and navigate to the project folder:

"cd path/to/simple-webserver"

Initialize a Node.js project:

npm init -y

Install the required dependencies (Express):

npm install express
Create the folder structure:

simple-webserver/
├── node_modules/
├── public/
│   ├── index.html
│   └── styles.css
└── server.js

Create the index.html file inside the public folder:

Open your web browser and navigate to http://localhost:3000 to see your simple web server in action.

This example demonstrates the basic setup of a web server using the Express framework in Node.js. 

In this folder include is the Dockerfile to create an image to be used with kubernetes

The image was created by using the command 
docker build -tag apps/simpleserver:1.0

Check in if the image is created by using the command

docker images 

Included is the file kubernetes.yaml to create a deployment with 3 pods.

The file can be run in kubectl with the following command

kubectl apply -f kubernetes.yaml

This will create a deployment with 3 pods.
