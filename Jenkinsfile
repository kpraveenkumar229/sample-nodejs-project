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
    }
}

