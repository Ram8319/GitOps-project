pipeline{

    environment{
        DOCKERHUB_CRED = credentials ('dockerhub_cred')
        IMAGENAME = 'Ram1Docker/portfolio'

    }

    stages{
        stage ("git clone") {
            steps{
                git branch : 'Dev',
                url: 'https://github.com/Ram8319/GitOps-project'
            }
        } 

        stage ("Build Docker Image") {
            steps {
                sh 'docker build -t $IMAGENAME:$BUILDNUMBER .'
            }
        }

        stage ('push to dockerhub') {
            steps {
                withCredentials([usernameColonPassword(credentialsId: 'dockerhub_cred', variable: '')]) {
                   sh 'docker push $IMAGENAME:$BUILDNUMBER'
                }
            }
        }
    }

    post {
        always {
            sh 'docker logout'
        }
    }
}