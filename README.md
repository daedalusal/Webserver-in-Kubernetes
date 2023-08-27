# Simple Web Server with Node.js and Kubernetes Deployment

This repository provides a basic example of setting up a simple web server using Node.js and deploying it to Kubernetes. The web server is implemented using the Express framework, and the deployment is orchestrated using Docker and Kubernetes.

## Getting Started

Follow these steps to set up and run the simple web server locally and deploy it to Kubernetes:

### Prerequisites

- Node.js (https://nodejs.org/)
- Docker (https://www.docker.com/)
- Kubernetes (https://kubernetes.io/)
- kubectl (https://kubernetes.io/docs/tasks/tools/)

# Installation

## 1. Clone this repository to your local machine:

   ```bash git clone https://github.com/daedalusal/simple-webserver.git
   ```bash cd simple-webserver
## 1. Initialize a Node.js project and install dependencies:
 ```bash npm init -y
 ```bash npm install express
## 2. Create the necessary folder structure:
<img width="116" alt="image" src="https://github.com/daedalusal/Webserver-in-Kubernetes/assets/118228709/03160b13-f32f-442d-adce-d0c0e3dec967">

### Update the __public/index.html__ and __public/styles.css__ files to customize your web page.

##  ```bash  Local Usage ##
Run the Node.js web server:
    ```bash node server.js
# Docker and Kubernetes Deployment

### 1. Build the Docker image:
    ```bash docker build -t apps/simpleserver:1.0 .
### 2. Check if the image is created:
    ```bash docker images
###  3. Deploy to Kubernetes using the provided 'kubernetes.yaml' file:
    ```bash kubectl apply -f kubernetes.yaml This is the declarative option
   
###  We can also do the same by using the imperative command 
    ```bash kubectl create deployment simplewebserver --image=apps/simpleserver:1.0 --port=3000 --replicas=3
  
This will create a Kubernetes deployment with 3 pods running the simple web server.

# Jenkins Pipeline (Automation)
To automate the building, testing, and deployment process, you can set up a Jenkins pipeline. Included is a JenkinsFile but for that you need a working Jenkins installation inside the cluster or in your server.
