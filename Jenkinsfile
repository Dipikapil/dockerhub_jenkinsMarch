pipeline {
    agent any

    environment {
        DOCKERHUB_USERNAME = 'dipikapil'  // Replace with your Docker Hub username
        DOCKERHUB_PASSWORD = credentials('dockerhub_token')  // Use Jenkins credentials plugin to store the password securely
        IMAGE_NAME = 'dipikapil/Dockerjenkins1'  // Replace with your Docker image name
    }

    stages {
        stage('Clone GitHub Repository') {
            steps {
                git 'https://github.com/Dipikapil/dockerhub_jenkinsMarch.git'  // Replace with your GitHub repo URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build("${IMAGE_NAME}")
                }
            }
        }

        stage('Push Docker Image to Docker Hub') {
            steps {
                script {
                    // Log in to Docker Hub
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_token') {
                        // Push the Docker image to Docker Hub
                        docker.image("${IMAGE_NAME}").push("latest")
                    }
                }
            }
        }
    }
}
