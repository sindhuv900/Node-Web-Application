# Deployment of dockerized nodejs web application onto ECS. Written Cloudformation templates for the same. 

Node Web Server Application:
- Created a web_server.js file using NodeJs.
- This app sends "Node Version" and "Hostname" onto port 3000 of the machine. 
- Required express module. 

Dockerize the app and push to ECR:
- Created a dockerfile to run the application. 
- Generated package.json file describes app and its dependencies
- Created an image from dockerfile.
- Pushed the image to AWS Elastic Container Registry using amazon CLI. 
- (Done the whole process of creating an image and pushing it to ECR on an EC2 Instance). 

Deploying the dockerized application on ECS:
- Created an ECS Cluster. 
- Created a Task definition by provifing the image URl of the ECR image. 
- Created a Service to run the task on ECS Cluster. 
- ECS container created with a public IP/DNS. 
- Accessing the web application directly through the public IP:port number of ECS Instance. 

Cloudformation Infrastructure templates:
- Contains all YAML configs for the architecture. 

In order to access this webUI:
- Run the following public IP and port number in your browser. 
- Link: http://35.182.104.0:3000/

In order to access the AWS Account:
- Please login as IAM User. 
