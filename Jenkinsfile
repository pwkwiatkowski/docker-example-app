pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('pwkwiatkowski-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t pwkwiatkowski/myapp:latest .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push pwkwiatkowski/myapp:latest'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}