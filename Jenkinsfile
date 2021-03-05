pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sumeetpatanker08/Jenkins_git.git']]])
            }
        }
        
        stage('Build'){
            steps {
                git 'https://github.com/sumeetpatanker08/Jenkins_git.git'
                bat 'python Code.py'
            }
        }
        stage('Build Image'){
            steps {
                bat 'docker build -t firstapp:v1 .'
            }
        }
        /*
        stage('Run Image'){
            steps {
                bat 'docker run -d -p 5000:5000 firstapp:v1'
            }
        }
        */
        stage('Push Image'){
            steps {
                bat 'docker login --username=sumeetpatanker08 --password=4WH66LDRIVe'
                bat 'docker tag firstapp:v1 sumeetpatanker08/helloworld:v1'
                bat 'docker push sumeetpatanker08/helloworld:v1'
            }
        }
    }
}

