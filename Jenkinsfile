pipeline {
    options
    {
        buildDiscarder(logRotator(numToKeepStr: '3'))
    }
    agent any
    environment
    {
        AWS_SDK_LOAD_CONFIG=1
        DOCKERHUB_CREDENTIALS= credentials('dockerhub_id')
    }
    stages {
        stage("Execution") {
            steps {
                script {
                        
                        sh"""
                        sh echo $DOCKERHUB_CREDENTIALS_PSW > docker_passwd
                        sh echo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin < ~/docker_passwd
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