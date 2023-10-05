pipeline {
  environment {
    imagename = "nabad600/jenkins"
    registryCredential = 'dockerhub'
    dockerImage = ''
    BUILD_DATE=$(date -u +'%m-%d-%Y%H-%M')
    // string(name: 'TAG_NUMBER', defaultValue: 'latest', description: 'Docker image tag number')
    // CUSTOM_BUILD_NUMBER = "${customTag}-${BUILD_DATE}"
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
          dockerImage = docker.build imagename
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            def customTag = params.TAG_NUMBER ?: 'latest'-${BUILD_DATE}
            dockerImage.push("$customTag")
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $imagename:$customTag"
 
      }
    }
  }
}
