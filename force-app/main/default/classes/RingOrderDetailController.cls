public class RingOrderDetailController {
    public Boolean showAboutUs{get;set;}
    public boolean ShowOderDetail{get;set;}
    public String name{get;set;}  
    public String address{get;set;}
    public String PhoneNumber{get;set;}
    
    
    
    public RingOrderDetailController(){
        showAboutUs = false ; 
        ShowOderDetail = false ; 
        
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
         showAboutUs = false ;
        
    }
    
    

}