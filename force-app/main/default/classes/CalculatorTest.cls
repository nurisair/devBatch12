@isTest
public class CalculatorTest {
    @isTest
    public static void testMessage() {
        Calculator c = new Calculator();
        c.welcomeMessage();
        c.printNewMessage('printing from TEST Method');
    }
    @isTEst
    private static void testAdd() {
        Calculator c= new Calculator();
        integer sum=c.add(11, 9);
        system.assertEquals(20, sum);   
    }
    @isTest
    public static void testPrintAndReturnMSG() {
         Calculator prn = new Calculator();
         string msg = 'Something from Test Method';
         prn.printAndReturnMsg(msg);
    }
    @isTest
    public static void testAdd2() {
        Calculator c2 = new Calculator();
        integer sm = c2.add(1, 2, 3);
        system.assertEquals(6, sm);
    }
   
}