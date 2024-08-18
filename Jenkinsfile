pipeline {
    agent any
    stages{
        stage("Build"){
            steps {
                sh "mvn -DskipTests clean package"
            }
        }
        stage("Test"){
            steps {
                sh "mvn test"
            }
        }
        stage("Docker build") {
            steps {
                sh 'docker build -t demo .'
            }
        }
    }
}
