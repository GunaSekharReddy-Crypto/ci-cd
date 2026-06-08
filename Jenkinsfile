pipeline {

    agent any

    environment {
        IMAGE_NAME = "version-app"
        IMAGE_TAG = "v1"
    }

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop version-app-container || true
                docker rm version-app-container || true

                docker run -d \
                --name version-app-container \
                -p 4001:4001 \
                ${IMAGE_NAME}:${IMAGE_TAG}
                '''
		echo "Application Running"
            }
   	  }
    }
}
