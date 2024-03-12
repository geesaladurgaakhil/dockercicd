pipeline {
  options {
    disableConcurrentBuilds()
    buildDiscarder(logRotator(numToKeepStr: '4'))
  }
  environment {
  docker_registry = 'durgaakhil0211/dockercicd'
  credentialsId = "DockerHubCreds"
  dockerImage=''
  BRANCH_NAME = "${GIT_BRANCH.split("/")[1]}"
  }
  agent any
  stages{
    stage("Building Docker Image"){
      steps{
        script{
          dockerImage = docker.build("${docker_registry}:${BRANCH_NAME}-${BUILD_NUMBER}")
        }
      }
    }
    stage('Pushing Image to DockerHUB') {
      steps{
        script {
          withDockerRegistry(credentialsId: 'DockerHubCreds', url: '') {
		  dockerImage.push()
          }
        }
      }
    }
  }
}
