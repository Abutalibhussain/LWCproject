public class My_First_Controller {
    // class synta: accessmodifier classkeyword classname
    // class mainly contain three component : 1. variable 2. functions / methods 3. constructor
    // 1. variable 
    //  variable deceration : accessmodifier(optional)  intancekeyword(optional) datatype variablename 
    public boolean flag;
    // variable instanciation / assignment
    // accessmodifier(optional)  intancekeyword(optional) datatype variablename assignmentoprator(=) value 
    public Static string str = 'salesforce';
    public static integer age = 25;
    //system.debug('str value is ' + str);
    // integer intvar =   123 ; 
    //system.debug('intvar ' + intvar );
    
    //system.debug('abu ' + abu);
    public My_First_Controller (integer intvar){
        String strvar = 'python';
        system.debug('str value is ' + str);
    }
    
    
    public My_First_Controller (){
        system.debug('str value is ' + str);
         str = 'python';
        system.debug('str value is ' + str);
    }
    
    public My_First_Controller (String str ){
         system.debug('str value is ' + str);
       // String strvar = 'python';
     //  str = 'corona';
     str = str;
        system.debug('str value is ' + str);
    }
  // syntax: accessmodifier(optional)  intancekeyword(optional) returnType  functionName/ MethodName
    public void myfirstMethod(){
        system.debug('str value is ' + str);
    }
    public string myFirstMethod = 'pearl';
    
    public static void mySecondMethod(){
        system.debug('str value is ' + str);
    }
    
    public static void myThirdMethod(String strVar){
        system.debug('str value is ' + strVar);
    }
    
     public static String myFourthMethod(String strVar , integer intVar){
        system.debug('str value is ' + strVar);
         return String.valueof(intVar);
    }
    
    
    
    
    
    
    
}