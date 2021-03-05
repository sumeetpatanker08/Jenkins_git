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
                bat 'python app.py'
            }
        }
        stage('Build Image'){
            steps {
                bat 'docker build -t firstapp:v1 .'
            }
        }
        stage('Run Image'){
            steps {
                bat 'docker run -d -p 5000:5000 firstapp:v1'
            }
        }
    }
}

