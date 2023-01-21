pipeline {
    agent any
    stages {
        stage('Git Pull') {
            steps {
                git branch: 'main', url: 'https://github.com/ilwad/packer.git'
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