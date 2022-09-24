pipeline {
    agent any

    tools {
        maven 'maven'
    }

    stages {
        stage('Build') {
            steps {
                echo "========================"
                echo 'Building...'
                echo "========================"
                sh 'mvn clean package -DskipTests -P docker'
                echo "Finished Building..."
            }
        }
        stage('Test') {
            steps {
                echo "========================"
                echo 'Testing...'
                echo "========================"
                sh 'mvn test -P docker'
            }
        }
        stage('Deploy') {
            steps {
                echo "========================"
                echo 'Deploying to Nexus Repository...'
                echo "========================"
                sh "mvn deploy -DskipTests -P docker"
            }
        }
    }
}