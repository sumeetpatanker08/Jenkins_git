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
    }
}

