node {
    
    stage("Git Clone") {
        
      git branch: 'main', url: 'https://github.com/rajatup1/docker-devops.git'
        
    }
    
    stage("Build and tag Docker image"){
        
      sh "docker build -t rajat9893308210/python:3.8 ."
        }
        
