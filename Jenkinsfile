pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    // Burada kodu derleme işlemleri yapılır
                    sh 'mvn clean install'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Burada Docker imajını oluşturma işlemleri yapılır
                    sh 'docker build -t my-node-app:1.0 .'
                }
            }
        }

        stage('Push to Container Registry') {
            steps {
                script {
                    // Burada imajı container registry'ye gönderme işlemleri yapılır
                    sh 'docker push my-node-app:1.0'
                }
            }
        }
    }
}
