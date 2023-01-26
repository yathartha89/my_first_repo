node{
  stage('SCM_checkout'){
    steps {
       git 'https://github.com/yathartha89/time-tracker.git'
    
    
    }
  
  
  }
  stage('COMPLILE'){
    steps {
       tool name: 'MAVEN', type: 'maven'
       sh "mvn package"
    
    }
  
  }


}
