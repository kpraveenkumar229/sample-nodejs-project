pipeline{
    agent any
    stages{
        stage('Checkout-Stage'){
            steps{
                 git 'https://github.com/kpraveenkumar229/sample-nodejs-project.git'
            }
        }
        stage('Build-Stage'){
            steps{
                sh 'npm build'
            }
        }
        stage('Change Directoery'){
            steps{
                sh 'cd /var/lib/jenkins/workspace/nodejs-declarative'
            }
        }
        stage('Bulding a Docker image'){
            steps{
                sh 'docker build -t kpraveenkumar23232/newimage:7 .'
            }
        }
        stage('Login to DockerHub'){
            steps{
                sh 'docker login -u kpraveenkumar23232 -p 123456789'
            }
        }
        stage('Pushing Docker image to DockerHub'){
            steps{
                sh 'docker push kpraveenkumar23232/newimage:7'
            }
        }
        
    }
 }
