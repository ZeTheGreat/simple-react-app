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
                withCredentials([string(credentialsId: 'token', variable: 'a459c90d24728795800cd8eec202aa39334f6935')]) {
                    sh './jenkins/scripts/publish.sh'
                } 
            }
        }
    }
}
