pipeline {
    agent none 
    stages {
        stage('Example Build') {
            agent { dockerfile true} 
            steps {
                echo 'Hello, RailsImage'
                sh 'rails --version'
            }
        }
        stage('Example Test') {
            agent { dockerfile true } 
            steps {
                echo 'Hello, Ruby'
                sh 'ruby -version'
            }
        }
    }
}