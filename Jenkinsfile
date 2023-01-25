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
            }
        }

        stage('Build Packer') {
            steps {
        withAWS(credentials: 'packer-build') {
        sh """
        #!/bin/bash
        ls -al
        pwd
        packer build .
        """
          }
            }
        }
    }
}
