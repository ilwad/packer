pipeline {
    agent any
    stages {
        stage('Git Pull') {
            steps {
                git branch: 'main', url: 'https://github.com/ilwad/packer.git'
            }
        }
         stage('List Files') {
            steps {
                sh 'ls -al'
                sh 'pwd'
                sh 'id'
            }
        }

        stage('Build Packer') {
            steps {
        withAWS(credentials: 'packer-build') {

          sh 'packer build .'
          }
            }
        }
    }
}
