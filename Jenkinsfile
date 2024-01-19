pipeline {
    agent any

    stages {
        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Define your Docker Hub credentials
                    def dockerHubCredentials = 'dockerhubcredentials'

                    // Pull source code or perform any necessary build steps here

                    // Login to Docker Hub
                    docker.withRegistry('https://registry.hub.docker.com', dockerHubCredentials) {
                        // Build and tag the Docker image
                        docker.build('rajkumar25maurya/python:v1')

                        // // Push the Docker image to Docker Hub
                        docker.image('rajkumar25maurya/python:v1').push()
                    }
                }
            }
        }
        stage ("Run Docker container on Remote host") {
            steps {
                script{
                    // SSH Into the Remote host and run the docker container
                    sshagent(['docker-root-host']) {
                        sh "ssh root@172.25.0.50 -o StrictHostKeyChecking=no 'docker run -it -d --name python-web -p 8000:8000 -p 8001:8001 rajkumar25maurya/python:v1'"
                        }
                }
            }

        }
       
    }
}