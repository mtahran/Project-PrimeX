pipeline {
    agent any
    parameters {
    //     choice(
    //         choices: ['apply', 'destroy'],
    //         description: 'Test choice',
    //         name: 'SELECT_CHOICE'
    //     )
    // }
    options {
      ansiColor('xterm')
    }
    stages {
        stage('init') {
            steps {
                dir('primeX') {
                  sh 'terraform init'
                }
            }
        }

        stage('validate_fmt') {
            steps {
                dir('primeX') {
                  sh 'terraform validate'
                  sh 'terraform fmt'
                }
            }
        }

        stage('plan') {
            steps {
                dir('primeX') {
                  sh 'terraform plan'
                }
            }
        }

        stage('apply') {
            steps {
                dir('primeX') {
                  sh "terraform ${params.SELECT_CHOICE} --auto-approve"
                }
            }
        }

        stage('destroy') {
            steps {
              dir('primeX') {
                sh "terraform ${params.SELECT_CHOICE} --auto-approve"
              }
            }
        }
    }
}