pipeline{

	agent {label 'linux'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/nabad600/jenkins-image.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t nabad600/jenkins:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push nabad600/jenkins:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
