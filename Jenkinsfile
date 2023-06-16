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
               sh 'docker build -t express-app .'
            }
        }
        stage('Deploy'){
            steps {
                sh 'docker run -d -p 80:5000 --name express-app express-app'
            }
        }
    }
}
