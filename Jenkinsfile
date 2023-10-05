pipeline {
  environment {
    imagename = "nabad600/jenkins"
    registryCredential = 'dockerhub'
    dockerImage = ''
    BUILD_DATE = $(date -u +'%m-%d-%Y%H-%M')
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
    // stage('Deploy Image') {
    //   steps{
    //     script {
    //       def customTag = params.TAG_NUMBER ?: 'latest'
    //       docker.withRegistry( '', registryCredential ) {
    //         dockerImage.push("$customTag")
    //       }
    //     }
    //   }
    // }
    // stage('Remove Unused docker image') {
    //   steps{
    //     sh "docker rmi $imagename:$customTag"
 
    //   }
    // }
  }
}
