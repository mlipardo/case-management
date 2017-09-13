node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

         app = docker.build("case-management/hello_world") 
    }
    
    stage('Test image') {
        /* We test our image with a simple smoke test:
         * Run a curl inside the newly-build Docker image */

         app.inside {
            sh 'echo "Tested image successfully"'
        } 
    }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
       
        docker.withRegistry('https://hub.docker.com/r/cwds/casemanagement/', 'credentialsId: 6ba8d05c-ca13-4818-8329-15d41a089ec0’) {
            docker.image(app).push('latest')
        }
    
    }
}




