pipeline {
    agent any

    stages {
        stage('Npm and Angular Version') {
               steps {
                     sh 'npm --version'
                     sh 'ng --version'
               }
        }
        stage('Install') {
               steps {
                        configFileProvider([configFile(fileId: '8403d3fe-8951-4292-b233-187a5483ce04', variable: 'npm_config_registry')]) {
                        echo " =========== ^^^^^^^^^^^^ Reading config from pipeline script "
                        sh "cat ${env.npm_config_registry}"
                        sh "npm config ls"
                        sh "npm cache clear --force"
                        sh "npm install"
                     }
               }
        }
        stage ('Build'){
                steps{
                       sh "npm run build"
                       script {
                            dockerImage = docker.build registry + ":$BUILD_NUMBER"
                       }
                }
        }
    }
}
