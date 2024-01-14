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
    }
}