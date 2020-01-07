public with sharing class SignupAndLoginController {
    
    public String  Name{get;set;}
    public String Email{get;set;}
    public String PhoneNumber{get;set;}
    public String password{get;set;}
    public String passwordAgain{get;set;}
    public String emailToLogin{get;set;}
    public String PasswordTologin{get;set;}
    public String errorMessage{get;set;}
    public Boolean PasswordNotMatched{get;set;}
    public Boolean UserNotFound{get;set;}
    
    public SignupAndLoginController() {
        PasswordNotMatched = false ; 
        UserNotFound = false ; 
        errorMessage = '';


    }
    
    public Pagereference createAccount(){
        Account acc = new Account();
        
        if(password ==  passwordAgain ){
            acc.Name = Name ; 
            acc.Email__c = Email ; 
            acc.Phone = PhoneNumber;
            acc.Password__c  =  password  ; 
            Database.SaveResult sr = Database.insert(acc, false);
            if (sr.isSuccess()) {
                PageReference RingLoginPage = Page.RingLoginPage;
                RingLoginPage.setRedirect(true);  
                return RingLoginPage; 
            }
        }  
        return null ; 
    }



     public PageReference  redirectToLoginPage() {
         PageReference RingLoginPage = Page.RingLoginPage;
                RingLoginPage.setRedirect(true);  
                return RingLoginPage; 

}
 public PageReference  redirectToSignupPage() {
         PageReference RingLoginPage = Page.RingSighnupPage;
                RingLoginPage.setRedirect(true);  
                return RingLoginPage; 

}
  

public Pagereference RingLogInFunc(){   
List<Account> user  = new List<Account>();
if(string.isNotBlank(emailToLogin)){
user =  [SELECT ID ,Name , Password__c ,  Email__c  FROM Account Where Email__c =: emailToLogin ] ;
if(!user.isEmpty()){
    if( user[0].Password__c ==  PasswordTologin) {
        PageReference RingLoginPage = Page.RingDetailPage;
            RingLoginPage.setRedirect(true);  
            return RingLoginPage; 
}else{
    PasswordNotMatched = true ;
    errorMessage = 'Please Enter Correct Password';
    return null ; 
}

}else{
    UserNotFound = true ;
errorMessage = 'User  not Found Please Signhup'; 
return null ; 

}

}
    return null ; 
    
}
    



  

    
}