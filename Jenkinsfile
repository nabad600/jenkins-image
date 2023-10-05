pipeline {
  environment {
    imagename = "nabad600/jenkins"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git([url: 'https://github.com/nabad600/jenkins-image.git', branch: 'main'])
 
      }
    }
    stage('Building image & Deploy image') {
      steps{
        script {
          def currentDate = new Date().format("MM-dd-yyyy-HH-mm")
          def customTag = params.TAG_NUMBER ?: 'latest'
          sh "docker build -t ${imagename}:${customTag}-${currentDate} ."
          docker.withRegistry( '', registryCredential ) {
            sh "docker push ${imagename}:${customTag}-${currentDate}"
          }
          sh "docker rmi ${imagename}:${customTag}-${currentDate}"
        }
      }
    }
  }
}
