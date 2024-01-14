pipeline {
    options
    {
        buildDiscarder(logRotator(numToKeepStr: '3'))
    }
    agent any
    environment
    {
        AWS_SDK_LOAD_CONFIG=1
        DOCKERHUB_CREDENTIALS= credentials('docker_hublogin')
    }
    stages {
        stage("Execution") {
            steps {
                script {
                        
                        sh"""
                        sh  'echo dckr_pat_7abs6giuUDGCTTsD3oUZXMjT0GE | docker login -u rajkumer25maurya --password-stdin'
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