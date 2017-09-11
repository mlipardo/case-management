node {
   def app

   stage(‘Clone repository’) {
       /* Let’s make sure we have the repository cloned to our workspace */

       checkout scm
   }

   stage(‘Build image’) {
       /* This builds the actual image; synonymous to
        * docker build on the command line */

       app = docker.build(“case-management/hello-world”)
   }

   stage(‘Test image’) {
       /* Ideally, we would run a test framework against our image.
        * For this example, we’re using a Volkswagen-type approach :wink: */

       app.inside {
           sh ‘echo “Tests passed”’
       }
   }
}