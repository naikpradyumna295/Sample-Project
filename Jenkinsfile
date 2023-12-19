pipeline{
    agent any

    tools{
        maven 'maven3.9'
        jdk 'OpenJDK8'
    }
     stages{
        stage('checkout code'){
            steps{
                git branch:'main',url:'https://github.com/naikpradyumna295/java-web-app.git'
            }
        }
        stage('build code'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Deployment'){
            steps{
                deploy adpaters:[tomcat9(url:'http://54.169.114.11:8080/',credentialsid:'TomcatCreds')],war:'target/*.war'
            }
        }
     }
}