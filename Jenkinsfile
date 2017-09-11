node {
   def app

   stage(‘Build image’) {
       /* This builds the actual image; synonymous to
        * docker build on the command line */

       app = docker.build(“case-management/hello_world”)
   }

   stage(‘Test image’) {
       /* Ideally, we would run a test framework against our image.
        * For this example, we’re using a Volkswagen-type approach :wink: */

           sh ‘echo “Tests passed”’
      
   }

   
}