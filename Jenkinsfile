pipeline {
    agent any

    tools {
        maven 'Maven3.9.6'
        jdk 'OpenJDK11'
    }

    stages {
        stage('checkout code') {
            steps {
                git branch: 'main', url: 'https://github.com/naikpradyumna295/java-web-app.git'
            }
        }
        stage('build code') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Deployment') {
            steps {
                deploy adapters: [tomcat9(url: 'http://52.221.206.73:8080/', credentialsid: 'TomcatCreds')], war: 'target/*.war'
            }
        }
    }
}
