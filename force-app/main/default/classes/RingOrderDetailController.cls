public class RingOrderDetailController {
    public String AccountId; 
    public Boolean showAboutUs{get;set;}
    public boolean ShowOderDetail{get;set;}
    public String Fromname{get;set;}  
    public String Fromaddress{get;set;}
    public String FromPhoneNumber{get;set;}
    
    
    
    public RingOrderDetailController(){
        showAboutUs = false ; 
        ShowOderDetail = false ; 
        AccountId = apexpages.currentpage().getparameters().get('id');
        System.debug('AccountId = ' +AccountId);

        
    }
    
    
    public void showAboutUsPart(){
        showAboutUs = True ; 
         ShowOderDetail = false ; 
        
    }
    
    public void ShowOrderdetail(){
        ShowOderDetail = True; 
         showAboutUs = false ; 
    }
    
    public void callbackfunction(){
         ShowOderDetail = false;
        
    }
    
    

}