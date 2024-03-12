pipeline {
    agent any
    environment {
      BRANCH_NAME = "${GIT_BRANCH.split("/")[1]}"
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
        stage('deploy') {
            steps {
                echo 'deploying ${BRANCH_NAME}...'
            }
        }
    }
}
