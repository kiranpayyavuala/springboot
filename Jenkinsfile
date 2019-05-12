 node{
   stage('SCM Checkout'){
     git 'https://github.com/kiranpayyavuala/springboot.git'
   }
   stage('Mvn-Package')
   {
         def mvnHome =  tool name: 'MAVEN_HOME', type: 'maven'   
      sh "${mvnHome}/bin/mvn package"
   }
   stage('Build Docker Image')
   {
   sh 'docker build -t kiran/myapp:1.0 .'
 }
 stage('Push Docker Image')
 {
   sh "docker login -u kiranpayyavuala -p our docker hub password"
   sh 'docker push kiran/myapp:1.0'
}
