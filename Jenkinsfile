pipeline {
    agent any

    stages {
        stage('Build Docker') {
            steps {
                sh "docker build -t react ."
            }
        }
        stage('Docker Run') {
            steps {
                sh "docker run -d -p 8585:80 react"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}