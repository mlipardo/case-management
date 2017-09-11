pipeline {
    agent none 
    stages {
        stage('Example Build') {
            
            steps {
                echo 'Hello, RailsImage'
                sh 'rails --version'
            }
        }
        stage('Example Test') {
           
            steps {
                echo 'Hello, Ruby'
                sh 'ruby -version'
            }
        }
    }
}