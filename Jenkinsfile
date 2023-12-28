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
                    sh 'docker build -t cuneytfurkan/my-node-app:1.0 .'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    // Burada imajı Docker Hub'a gönderme işlemleri yapılır
                    sh 'docker login -u cuneytfurkan -p njjUwmL123'
                    sh 'docker push cuneytfurkan/my-node-app:1.0'
                }
            }
        }
    }
}
