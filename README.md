[![Build Status](https://travis-ci.org/bgenome/simple-web-app.svg?branch=master)](https://travis-ci.org/bgenome/simple-web-app)
# simple-web-app

This is a simple Node.js CMS web app spawn from Cody Project

```
https://github.com/bgenome/cody
```

### To Deploy this Project I used the Following:
```
1. Docker-Compose
2. Docker-Machine
3. Docker HUB to store docker images after succesful build
4. AWS EC2 Instance
5. AWS S3 Bucket
6. Travis-CI
```

## The CI-CD workflow starts with every PUSH to the master branch in this Github Repository

### Every Push triggers the Travis-CI build job that does the following steps:
```
pre. Download from AWS S3 id_rsa private key to later use to connect to the AWS EC2 Instance
1. Build the docker images from the docker-compose.yml description
2. After Succesful build Push the docker images to Docker HUB to store them for later useage
3. Create connection to AWS EC2 instance as the docker-machine in the Cloud
4. Pull the latest Docker images from the docker HUB
5. Run docker-compose up -d to recreate the current running service with the new pulled docker images
```

# Steps to contribute to the process:
1. Clone the repository
```
git clone git@github.com:bgenome/simple-web-app.git
```
2. Inside the project checkout to new branch
```
cd simple-web-app
git checkout <new_branch>
```
3. Do your thing :)
4. Commit your work
```
git commit -m"Enter Message Here"
```
5. Push your branch
```
git push origin <new_branch>
```
6. On GitHub request Pull-Request to start review process

And then there will be a build to check if your work didnt break the code.
The final product can be found on this URL:
http://ec2-34-245-215-61.eu-west-1.compute.amazonaws.com/en/


This is my first ever experience with AWS services and Continuous deployment to a running environment.
As you can see there is more work to do to make this process more robust and full blown CI/CD pipeline.
