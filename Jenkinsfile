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
                             sh 'npm cache clean --force'
                             sh "npm install"
                             cho '***************************Install Successfully'
                    }
                }
      stage('Build') {
                          steps {
                              sh 'npm build'
                              echo '***************************Build Successfully'
                          }
                      }
        stage('Test') {
            steps {
                sh 'npm run test'
                echo '********************************Test Successfully'
            }
        }
        stage('Deploy') {
                    steps {
                        echo 'Deploy ended Successfully'
                    }
                }
    }
}
