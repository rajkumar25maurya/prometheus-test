pipeline {
    options
    {
        buildDiscarder(logRotator(numToKeepStr: '3'))
    }
    agent any
    environment
    {
        AWS_SDK_LOAD_CONFIG=1
        registryCredential = 'dockerhub_id'
    }
    stages {
        stage("Execution") {
            steps {
                script {
                        
                        sh"""
                        docker build -t promethest-python:v1  .
                        docker tag promethest-python:v1  rajkumar25maurya/promethest-python:v1
                        docker push rajkumar25maurya/promethest-python:v1
                        docker rmi rajkumar25maurya/promethest-python:v1
                        docker rmirajkumar25maurya/promethest-python:v1
                        """
                    }
        
                }
            }
        }
    }