pipeline{
     environment {
       IMAGE_NAME = "Django"
       IMAGE_TAG = "latest"
     }
    agent none
    stages {
        stage("build"){
	    agent any
            steps {
                sh """
                    docker build .
                ""
            }
        }
        stage("run"){
	    agent any
            steps{
                sh """
		    docker-compose up 
		    sleep 5
                """
            }
        }
       stage('Test image') {
           agent any
           steps {
              script {
                sh '''
                    curl http://3.238.6.181:8000/ | grep -q It
                '''
              }
           }
	}
      stage('Clean Container') {
          agent any
          steps {
             script {
               sh '''
                 docker stop $IMAGE_NAME
                 docker rm $IMAGE_NAME
               '''
             }
          }
     }
    }
}
