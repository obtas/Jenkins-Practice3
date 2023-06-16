pipeline {
    agent any
    stages {
        stage('Clean up'){
            steps {
               sh 'docker rm -f $(docker ps -aq) || true'
            }
        }
        stage('Build'){
            steps {
               sh 'docker build -t nodejs-project:%{BUILD_NUMBER} .'
            }
        }
        stage('Deploy'){
            steps {
                sh 'docker run -d -p 80:5000 --name nodejs-project nodejs-project:%{BUILD_NUMBER}'
            }
        }
    }
}
