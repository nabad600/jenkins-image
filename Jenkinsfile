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
    stage('Building image') {
      steps{
        script {
          def currentDate = new Date().format("MM-dd-yyyy-HH-mm")
          def customTag = params.TAG_NUMBER ?: 'latest'
          tag = ${customTag}-${currentDate}
          sh "docker build -t ${imagename}:${tag} ."
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push("$tag")
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $imagename:$tag"
 
      }
    }
  }
}
