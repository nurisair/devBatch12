public class PrimitiveDataTypeDemo3 {
    public void printNewDateTime(){
        datetime dt3 = datetime.newInstanceGmt(2021, 7, 8, 1, 1, 1);
        system.debug('dt3 is ' + dt3);

        Datetime dt4 = datetime.newinstance(0);
        system.debug('dt 4 is '+ dt4);

        Datetime dt4_1 = datetime.newinstance(-30000);
        system.debug('dt 4_1 is '+ dt4_1);


        long LongTime = 18909876567L;    
        Datetime dt4_2 = datetime.newinstance(LongTime);
        system.debug('dt 4_2 is ' + dt4_2);

        //current datetime
        datetime dt6 = Datetime.now();//always gives GMT
        system.debug('dt 6 is '+ dt6);
        
        // gmt
        datetime dt7 = datetime.newInstanceGmt(1999, 5, 5, 5, 6, 7);
        system.debug('dt 7 is '+ dt7);



    }
}