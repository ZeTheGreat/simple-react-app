pipeline {
    agent {
        docker {
            image 'meetup/node-github' 
            args '-p 9091:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
        stage('Publish') {
            steps {
                withCredentials([string(credentialsId: 'token', variable: 'ca10b5b8061a648b94608febba6f6c5cf4cf15eb')]) {
                    sh './jenkins/scripts/publish.sh'
                } 
            }
        }
    }
}
