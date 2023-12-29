pipeline {
    agent any
    tools{
        maven 'maven_3_6_3'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/PreetishNiket/DockerDemo']]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t preetish18/img1 .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'Docker_connection', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u preetish18 -p ${dockerhubpwd}'

}
                   sh 'docker push preetish/img1'
                }
            }
        }
    }
}
