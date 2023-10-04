pipeline {
    agent any
 stages {
  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t nginxtest:latest .' 
                sh 'docker tag jenkins nabad600/jenkins:latest'
                sh 'docker tag jenkins nabad600/jenkins:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ dockerhub: "dockerHub", url: "" ]) {
          sh  'docker push nabad600/jenkins:latest'
          sh  'docker push nabad600/jenkins:$BUILD_NUMBER' 
        }
                  
          }
        }
    }
}
