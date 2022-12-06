public class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('create new date instance');
        Date newDate=Date.newInstance(1453, 5, 27);
        system.debug('new date is ' + newDate);
        Date newDate2=Date.newInstance(2022,8,13);
        system.debug(newDate2);

        Date todaysDate = Date.today();
        system.debug('today\'s date is '+ todaysDate);

    }
    public void printNewTime(){
        Time myTime = Time.newInstance(2, 15, 45, 55);//
        system.debug('the time is ' + myTime);
    }

    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = time.newInstance(2, 15, 45, 55);
        
        // 1. way
        Datetime dt1= Datetime.newInstance(newdate, newTime);
        system.debug('dt1 is '+ dt1);

        //2.way
        Datetime dt2 = Datetime.newInstance(1999, 4, 30);
        system.debug('dt2 is ' + dt2);
        

    }
}