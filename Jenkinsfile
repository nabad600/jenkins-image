node {   
    stage('Clone repository') {
        git credentialsId: 'git', url: 'https://github.com/nabad600/jenkins-image.git'
    }
    
    stage('Build image') {
       dockerImage = docker.build(“nabad600/jenkins:latest")
    }
    
 stage('Push image') {
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
        dockerImage.push()
        }
    }    
}
