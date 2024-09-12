pipeline {
    agent any
    
    tools {
        maven 'maven'
    }
	 environment {     
         DOCKERHUB_CREDENTIALS= credentials('docker-hub')     
       } 

stages{
        stage('Build'){
            steps {
                sh 'mvn clean package -Dmaven.test.skip=true'
            }
            post {
                success {
                    echo 'Archiving the artifacts'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
    stage('Build Docker Image') {         
      steps{                
	sh 'docker build -t satishkumarpanda/webserver:$BUILD_NUMBER .'           
        echo 'Build Image Completed'                
      }           
    }   
   stage('Login to Docker Hub') {         
      steps{                            
	sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'                 
	echo 'Login Completed'                
      }           
    }
 stage('Push Image to Docker Hub') {         
      steps{                            
	sh 'docker push satishkumarpanda/webserver:$BUILD_NUMBER'                 
  echo 'Push Image Completed'       
      }           
    }
	 stage('Run Container on Dev Server') {         
    steps{
	       script {
      def dockerRun = "docker run -p 8383:8080 -d --name newweb satishkumarpanda/webserver:$BUILD_NUMBER"
  
	    sshagent(['webserver']){
      //sh "ssh -o StrictHostKeyChecking=no ec2-user@3.110.134.52 ${dockerdel}"
       sh "ssh -o StrictHostKeyChecking=no ec2-user@43.205.146.230 ${dockerRun}"
}
	       }
    }       
    } 
    }
}
