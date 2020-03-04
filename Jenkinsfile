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
        stage('To install docker dependencies on agent'){
            steps{
                sh 'sudo yum install -y yum-utils device-mapper-persistent-data lvm2'
            }
        }    
        stage('Add docker repository to the agent'){
            steps{
    sh 'sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo'
            }
        }
        stage('To install docker on agent'){
            steps{
                sh 'sudo yum install docker -y'
            }
        }
    }
    post{
        always{
            cleanWs()
        }
    }
}
