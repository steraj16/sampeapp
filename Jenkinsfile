pipeline {
    agent any
    
    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
        git "git"
        dotnetsdk "dotnet"
    }

    stages {
        stage('Dotnet-Build') {
         steps {
                // Get some code from a GitHub repository
                //echo "git cloning"
                //git clone 'https://github.com/steraj16/sampeapp.git --single-branch --branch master' , credentialsId: 'steraj16'
                //git 'https://github.com/steraj16/sampeapp.git'
                
                echo "dotnet  build"

                // Run Maven on a Unix agent.
                bat "dotnet build"
                }
           }
        stage('Docker-Build') {
         steps {
                echo "Docker  build"

                // Run Maven on a Unix agent.
                bat "docker --version"
                bat "docker build -f dockerfile . -t myapp:1.00"
                }
        }
    }      
}           
