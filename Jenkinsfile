pipeline{
    agent{
        node{
            label"${Agent}"
        }
    }
    stages{
        stage('To check git version on agent'){
            steps{
                sh 'git --version'
            }
        }
        stage('To check java version on agent'){
            steps{
                sh 'java -version'
            }
        }
        stage('To update the agent'){
            steps{
                sh 'sudo yum update -y'
            }
        }    
        stage('To install docker on agent'){
            steps{
                sh 'sudo yum install -y docker'
            }
        }
        stage('To start docker'){
            steps{
                sh 'sudo service docker start'
            }
        }
        stage('to check docker status'){
            steps{
                sh 'sudo service docker status'
            }
        }
    }
    post{
        always{
            cleanWs()
        }
    }
}
