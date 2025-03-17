pipeline {
    agent none
    options {
        checkoutToSubdirectory('fc4e-kb')
        newContainerPerStage()
    }
    environment {
        PROJECT_DIR='fc4e-kb'
        GH_USER = 'newgrnetci'
        GH_EMAIL = '<argo@grnet.gr>'
    }
    stages {
        stage('FC4E Kb Packaging & Testing') {
            agent {
                docker {
                    image 'argo.registry:5000/epel-7-java11-mvn384'
                    args '-v $HOME/.m2:/root/.m2 -v /var/run/docker.sock:/var/run/docker.sock -u root:root'
                }
            }
            steps {
                echo 'FC4E Kb Packaging & Testing'
                sh """
                cd ${WORKSPACE}/${PROJECT_DIR}
                mvn clean install -DskipTests=true -U
                mvn clean package -Dquarkus.package.type=uber-jar
                """
                junit testResults: '**/**/target/surefire-reports/*.xml', allowEmptyResults: true
                archiveArtifacts artifacts: '**/target/*.jar'
                step( [ $class: 'JacocoPublisher' ] )
            }
            post {
                always {
                    cleanWs()
                }
            }
        }
    }
    post {
        success {
            script{
                if ( env.BRANCH_NAME == 'main' || env.BRANCH_NAME == 'devel' ) {
                    slackSend( message: ":rocket: New version for <$BUILD_URL|$PROJECT_DIR>:$BRANCH_NAME Job: $JOB_NAME !")
                }
            }
        }
        failure {
            script{
                if ( env.BRANCH_NAME == 'main' || env.BRANCH_NAME == 'devel' ) {
                    slackSend( message: ":rain_cloud: Build Failed for <$BUILD_URL|$PROJECT_DIR>:$BRANCH_NAME Job: $JOB_NAME")
                }
            }
        }
    }
}
