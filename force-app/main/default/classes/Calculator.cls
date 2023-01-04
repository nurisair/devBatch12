public class Calculator {

   public void welcomeMessage(){
      //system.debug --> to print, and TO DEBUG our code.
      //we use it whenever we want to UNDERSTAND what our code is doing.
      system.debug('welcome to apex calc');
 }

 public void printNewMessage(string msg){
      //variable name of paramert is USED inside the class.
      //OUTSIDE class, variable name of parameter DOES NOT MATTER.
      system.debug(msg);
 }

 //void -> return nothing.
 //if we want to return string, write string.
 public string printAndReturnMsg(string msg2){
      system.debug(msg2);
      string returnStr = msg2 + '...OK cool';
      return returnStr;
 }

 public integer add(integer a, integer b){
      integer sum = a + b;
      return sum;
 }

 public integer add(integer a, integer b, integer c){
      integer sum = a + b + c;
      return sum;
 }

 //1. param --> date
 //2. return type is boolean
 public boolean checkLeapYear(date dt){
      integer year = dt.year(); //built in method.
      boolean lp = date.isLeapYear(year); //isLeapYear is also a built in method of DATE class.
      return lp;
 }
}
   /*
   public void welcomeMessage(){
    system.debug('welcome to Apex calc ');
   }
   public void printMessage(string msg){
    system.debug(msg);
   }
   public string printAndReturnMsg(string prn){
    system.debug(prn);
    string returnStr = prn + '.... OK Cool! ';
    return returnStr;
   }

   public integer add(integer a, integer b){
      integer sum = a + b;
      return sum;
   }

   //we can have two methods with same name. but has some conditions. 
   public integer add(integer a, integer b, integer c){
      integer sum = a+b+c;
      return sum;
   }
      //parameters data type and return data type are independent. Meaning could be different. 
   public string add2(integer x, integer y){
      integer sum = x+y;
      return 'Job well done!';
   }

   public Boolean checkLeapYear(date dt){
      integer year= dt.year();
      Boolean lp = Date.isLeapYear(year);
      return lp;
   }

}
*/