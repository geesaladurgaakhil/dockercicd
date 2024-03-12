pipeline {
    agent any
    environment {
      BRANCH_NAME = "test"
      }
    stages {
        stage('build') {
            steps {
                echo 'Hello world, this is multibranch pipeline for ${BRANCH_NAME} branch'
            }
        }
        stage('test') {
            steps {
                echo 'testing ${BRANCH_NAME}...'
            }
        }
        stage('Build image') {         
       
            app = docker.build("durgaakhil0211/dockercicd")    
        }
        stage('deploy') {
            steps {
                echo 'deploying ${BRANCH_NAME}...'
            }
        }
    }
}
