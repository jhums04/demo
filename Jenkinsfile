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
        stage("Deploy image") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'Dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'docker login -u $DOCKER_USER -p DOCKER_PASS'
                    sh 'docker tag demo jbonganciso04/demo:latest'
                    sh 'docker push jbonganciso04/demo:latest'
                }
            }
        }
    }
}
