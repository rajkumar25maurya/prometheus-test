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
                        docker.build('python:v1')

                        // // Push the Docker image to Docker Hub
                        // docker.image('your-docker-image:tag').push()
                    }
                }
            }
        }
    }
}