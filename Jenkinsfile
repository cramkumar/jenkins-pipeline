pipeline  {
   environment {
        registry = "cramkumar/jenkins-docker-test"
        DOCKER_PWD = credentials('docker-login-pwd')
}
 agent {
      docker {
             image 'jdocker'
             args '-p 3000:3000'
             args '-w /app'
             args '-v /var/run/docker.sock:/var/run/docker.sock'
            }
        }
options {
  skipStagesAfterUnstable()
}
stages {

   stage("Build") {
            steps {
                  sh 'npm install'
                 }
              }
       stage("Test") {
            steps {
                  sh 'npm test'
                 }
              }
       stage("Build and Post Docker image ") {
            steps {
                  sh 'docker image build -t $registry:$BUILD_NUMBER'
                  sh 'docker login -u cramkumar -p $DOCKER_PWD'
                  sh 'docker image push $registry:$BUILD_NUMBER'
                  sh "docker image rm $registry:$BUILD_NUMBER"
                 }

<<<<<<< HEAD
               }
=======
       stage("Deploy and smoke test") {
            steps {
                  sh  './jenkins/scripts/deploy.sh'
                 }
              }

       stage("Cleanup") {
            steps {
                  sh './jenkins/scripts/cleanup.sh'
                 }
              }
>>>>>>> ea7e1b3ee23fa90063d01e300bfaf96eb5ef109c

          }
    }
 
