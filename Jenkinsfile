pipeline {
    agent none 
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                echo 'Hello, RailsImage'
            }
        }
        stage('Test') {
           
            steps {
                echo 'Hello, Ruby'
                
            }
        }
    }
}