public class Calculator {
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