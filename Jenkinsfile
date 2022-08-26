pipeline{
    agent any
    stage('Git clone'){
        
        steps{
          checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rajatup1/docker-devops.git']]])
          }
        }
        
    stage("Build and tag Docker image"){
        steps {
          script{
            sh "docker image build  . --tag r-48ac-seg-docker-local.artifactory.2b82.aws.cloud.airbus.corp/rajat-test:latest"
           }
         }
       }
    
    stage('Push image to artifactory'){
        steps{
            script{
                withCredentials([usernamePassword(credentialsId: 'artifactory-48ac-user', passwordVariable: 'passwd', usernameVariable: 'admin')]) {
                 sh 'docker login https://r-48ac-seg-docker-local.artifactory.2b82.aws.cloud.airbus.corp/ -u admin -p ${artifactory-48ac-user} '
                    }
                 
                 sh 'docker push r-48ac-seg-docker-local.artifactory.2b82.aws.cloud.airbus.corp/rajat-test:latest'
            }
        }
    }
    
    
}
