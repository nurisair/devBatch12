public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription='learning string methods in Apex';
        system.debug(sessionDescription);
        
        integer sessionStrLenght = sessionDescription.length();
        system.debug('lenght of session description is ' + sessionStrLenght);

        string capsSessionDesc = sessionDescription.toUpperCase();
        system.debug('in capitals --> ' + capsSessionDesc);

        boolean containsApex = sessionDescription.contains('apex');
        system.debug('contains apex? -->'+ containsApex);

        boolean containsSF = sessionDescription.contains('methods');
        system.debug('contains methods? '+containsSF);

        boolean containsApex2 = sessionDescription.containsIgnoreCase('apex');
        system.debug('contains apex ignore case? -->'+ containsApex2);


    }
}