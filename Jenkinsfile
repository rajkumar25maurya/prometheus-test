pipeline {
    options
    {
        buildDiscarder(logRotator(numToKeepStr: '3'))
    }
    agent any
    environment
    {
        
        DOCKERHUB_CREDENTIALS= credentials('dockerhubcredentials')     
    }
    stages {
        stage("Execution") {
            steps {
                script {
                        
                        sh"""
                         'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'   
                        // docker build -t promethest-python:v1  .
                        // docker tag promethest-python:v1  rajkumar25maurya/promethest-python:v1
                        // docker push rajkumar25maurya/promethest-python:v1
                        // docker rmi rajkumar25maurya/promethest-python:v1
                        // docker rmirajkumar25maurya/promethest-python:v1
                        """
                    }
        
                }
            }
        }
    }