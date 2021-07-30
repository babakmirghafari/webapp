pipeline {
    agent any

    stages {
    stage('Npm and Angular Version') {
                        steps {
                            sh 'npm --version'
                        }
                    }
        stage('Build') {
                    steps {
                        sh 'npm run build'
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
