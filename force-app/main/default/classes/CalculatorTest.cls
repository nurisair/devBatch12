@isTest //this ann for class

public class CalculatorTest {

    @isTest //this second one is for method
    public static void testMessage() {
        Calculator c=new Calculator();
        c.welcomeMessage();
        c.printNewMessage('This is printing from test');
    }
    @istest
    public static void testAdd() {
        Calculator c1 = new Calculator();
        integer sum = c1.add(10, 11);
        System.assertEquals(21, sum);
    }
    @istest
    public static void testAdd2() {
        Calculator c1 = new Calculator();
        integer sum = c1.add(10, 11, 22);
        System.assertEquals(43, sum);
    }
}
