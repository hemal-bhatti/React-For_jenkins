pipeline {
    agent {
        label 'react'
    }

    stages {
        stage('Build Docker') {
            steps {
                sh "whoami"
                sh "cd /home/ubuntu/workspace/react-project"
                sh "sudo docker build -t webhook ."
            }
        }
        stage('Docker Run') {
            steps {
                    // sh "echo ============================="
                    // sh "echo ${dockerfile}"
                    // sh "echo ============================="
                    sh "sudo docker run -d -p 8585:80 webhook"
                // script {
                //     docker.image("react").run("-d -p 8585:80")
                // }
            }
        }
    }
}

// ED25519

// pipeline {
//     agent any

//     stages {
//         stage('Build Docker') {
//             steps {
//                 sh "docker build -t react ."
//             }
//         }
//         stage('Docker Run') {
//             steps {
//                 sh "docker run -d -p 8585:80 react"
//             }
//         }
//         stage('Deploy') {
//             steps {
//                 echo 'Deploying....'
//             }
//         }
//     }
// }
