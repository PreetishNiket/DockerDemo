pipeline {
    agent any
  agent {label 'linux'}

    environment {
        // Customize these environment variables
        DOCKER_HUB_USERNAME = 'preetish18'
        DOCKER_HUB_PASSWORD = credentials('Docker_connection')
        IMAGE_NAME = 'jenimg'
        IMAGE_TAG = 'latest'
    }
    stages {
      stage('gitclone') {

			steps {
				git 'https://github.com/PreetishNiket/DockerDemo.git'
			}
		}
        stage('Build') {
            steps {
                script {
                    // Build Docker image
                    sh "docker build -t ${DOCKER_HUB_USERNAME}/${IMAGE_NAME}:${IMAGE_TAG} ."
                }
            }
        }

        stage('Publish') {
            steps {
                script {
                    // Log in to Docker Hub
                    sh "docker login -u ${DOCKER_HUB_USERNAME} -p ${DOCKER_HUB_PASSWORD}"

                    // Push Docker image to Docker Hub
                    sh "docker push ${DOCKER_HUB_USERNAME}/${IMAGE_NAME}:${IMAGE_TAG}"
                }
            }
        }
    }

    post {
        always {
            // Clean up: Log out from Docker Hub
            sh "docker logout"
        }
    }
}
