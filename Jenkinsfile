pipeline {

    agent any

    environment {
        IMAGE_NAME = "flask-app"
        CONTAINER_NAME = "flask-container"
    }

    stages {

        stage('Clone Code') {
            steps {
                echo "Code already cloned by Jenkins"
            }
        }

        stage('Build Docker Image') {
            steps {

                dir('flask-app') {

                    sh 'docker build -t ${IMAGE_NAME} .'

                }
            }
        }

        stage('Remove Old Container') {
            steps {

                sh 'docker rm -f ${CONTAINER_NAME} || true'

            }
        }

        stage('Run Container') {
            steps {

                sh '''
                    docker run -d \
                    -p 5000:5000 \
                    --name ${CONTAINER_NAME} \
                    ${IMAGE_NAME}
                '''
            }
        }

        stage('Verify') {
            steps {

                sh 'docker ps'

            }
        }
    }
}
