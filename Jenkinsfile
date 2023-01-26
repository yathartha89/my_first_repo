node{
  stage('SCM_checkout'){
    
       git 'https://github.com/yathartha89/time-tracker.git'
    
    
    
  
  
  }
  stage('COMPLILE'){
    
       def mavenhome = tool name: 'MAVEN', type: 'maven'
    sh "${mavenhome}/bin/mvn package"
    
    
  
  }


}
