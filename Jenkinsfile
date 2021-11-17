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
#             docker build .
              ssh -o StrictHostKeyChecking=no vagrant@192.168.99.11 -C \'docker build .'
             """
        }
      }
      stage("run"){
        agent any
        steps{
          script{
            sh '''
               ls /usr/bin
#               yum install docker-compose-1.18.0-4.el7.noarch
               docker build .
               docker-compose up -d
	       sleep 5
               '''
          }
        }
      }
      stage('Test image') {
        agent any
        steps {
          script {
            sh '''
                curl -L http//127.0.0.1:8000 | grep -q It
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
