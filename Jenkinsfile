pipeline {
environment {
registry = "nabad600/jenkins"
registryCredential = 'dockerhub'
dockerImage = ''
}
agent any
stages {
stage('Cloning our Git') {
steps {
git clone 'https://github.com/nabad600/jenkins-image.git'
}
}
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
stage('Deploy our image') {
steps{
script {
docker.withRegistry( '', registryCredential ) {
dockerImage.push()
}
}
}
}
stage('Cleaning up') {
steps{
sh "docker rmi $registry:$BUILD_NUMBER"
}
}
}
}
