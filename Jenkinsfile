pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-u root'
        }
    }
    environment {
        POM_VERSION = ""
    }
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'maven:3-alpine'
                    args '-u root'
                }
            }
            steps {
                sh "mvn package -Dmaven.test.skip=true"
            }
        }
    }
}