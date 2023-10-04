pipeline {
    agent any
    stages {
        stage('Build and Push Docker Image') {
            steps {
                container('kaniko') {
                    sh 'kaniko --context . --dockerfile Dockerfile --destination nabad600/jenkins:latest'
                }
            }
        }
    }
}
