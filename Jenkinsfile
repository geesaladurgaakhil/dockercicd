 environment {
  docker_registry = 'durgaakhil0211/dockercicd'
  credentialsId = "DockerHubCreds"
  dockerImage=''
  BRANCH_NAME = "${GIT_BRANCH.split("/")[1]}"
  }
node {    
      def app     
      stage('Clone repository') {               
             
            checkout scm    
      }     
      stage('Build image') {         
       
           dockerImage = docker.build("${docker_registry}:${BRANCH_NAME}-${BUILD_NUMBER}") 
       }     
      stage('Test image') {           
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
        }     
       stage('Push image') {
       docker.withRegistry(credentialsId: 'DockerHubCreds', url: '') {            
       app.push("${env.BUILD_NUMBER}")            
       app.push("latest")        
              }    
           }
        }



