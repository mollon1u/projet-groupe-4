



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
              ssh vagrant@192.168.99.11 -C \'sudo docker build /root/projet/projet-groupe-4/'
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
               ssh vagrant@192.168.99.11 -C \'sudo docker-compose -f /projetb/projet-groupe-4/docker-compose.yml up -d'
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
