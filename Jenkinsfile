node{
  stage('SCM_checkout'){
    
       git 'https://github.com/yathartha89/time-tracker.git'
    
    
    
  
  
  }
  stage('COMPLILE'){
    
       tool name: 'MAVEN', type: 'maven'
       sh "mvn package"
    
    
  
  }


}
