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
                    withNPM(npmrcConfig: 'npmrc') {
                                    sh 'npm cache clean --force'
                                    sh "npm config ls"
                                    sh "npm install"
                                    sh "ng build"
                                    echo '***************************Install Successfully'
                              }
                    }
                }
      stage('Build') {
                          steps {
                              sh 'npm build'
                              echo '***************************Install Successfully'
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
