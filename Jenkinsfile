pipeline{
    agent any 
    tools {
    maven 'Maven'
  }
    stages {
        stage('Git Checkout'){ 
            steps{ 
                script{
                    git branch: 'main', url: 'https://github.com/SumanthGana/demo-counter-app.git'
                }
            }
        }
       /* stage('UNIT testing'){
            
            steps{
                
                script{
                    
                    sh 'mvn test'
                }
            }
        }
        stage('Integration testing'){
            
            steps{
                
                script{
                    
                    sh 'mvn verify -DskipUnitTests'
                }
            }
        }*/
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }
        stage('Maven build'){
            steps{ 
                script{
                    sh 'mvn clean package'
                }
            }
        }
        /*stage('Static code analysis'){ 
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'sonar-api') {  
                        sh 'mvn clean package sonar:sonar'
                    }
                   }   
                }
            }
            stage('Quality Gate Status'){
                steps{
                    script{
                        waitForQualityGate abortPipeline: false, credentialsId: 'sonar-api'
                    }
                }
            }*/
          stage('Docker Image Build'){
            steps{
                script{
                    sh 'docker build -f SumanthGana/demo-counter-app .'
                   /* sh 'docker image tag $JOB_NAME:v1.$BUILD_ID sumanthgana/$JOB_NAME:v1.$BUILD_ID'
                    sh 'docker image tag $JOB_NAME:v1.$BUILD_ID sumanthgana/$JOB_NAME:latest'*/
          }
              }      
     }
    }
}
