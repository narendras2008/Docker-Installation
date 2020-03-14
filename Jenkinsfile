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
        stage('To check docker status'){
            steps{
                sh 'sudo service docker status'
            }
        }
        stage('Pull docker image and run'){
            steps{
                sh 'sudo docker pull ubuntu'
            }
        }
        stage('to run the conatiner'){
            steps{
                sh 'sudo docker run ubuntu'
            }
        }
        stage('To check docker container'){
            steps{
                sh 'sudo docker ps -a'
            }
        }
        stage('To delete unused conatiners'){
            steps{
                sh 'sudo docker system prune -a -f'
            }
        }
            stage('To check docker conatiner'){
                steps{
                    sh 'sudo docker ps -a'
                }
            }
                stage('To check docker version'){
            steps{
                sh 'sudo docker -v'
            }
        }
    }
    post{
        always{
            cleanWs()
        }
    }
}


