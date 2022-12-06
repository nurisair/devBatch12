public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        date BirthDate = date.newInstance(1980, 4, 27);
        date todaysDate = date.today();
        integer ageInMonths = BirthDate.monthsBetween(todaysDate);
        system.debug(' Nuri\'s age in months is '+ ageInMonths);
    }
    public void calculateAgeInDays(){
        date BirthDate = date.newInstance(1980, 4, 27);
        date todaysDate = date.today();
        integer ageInDays = BirthDate.daysBetween(todaysDate);
        system.debug(' Nuri\'s age in days is '+ ageInDays);
    }
public void printSubsEndDate(){
    date subsStartDate = date.today();
    date subsEndDate = subsStartDate.addDays(999);
    system.debug('Subscription end date is '+subsEndDate);

    integer endDateYear = subsEndDate.year();
    system.debug('Subscription end date year is '+endDateYear);

    integer endDateMonth = subsEndDate.month();
    system.debug('Subscription end date month is '+endDateMonth);
}   
public void printOfferEndDatetime(){
    datetime dtnow = datetime.now();
    datetime offerEndDatetime = dtnow.addHours(51);
    system.debug('Offer end time is '+ offerEndDatetime);
}
public void birthDateInMiliseconds(){
    datetime birthTime = datetime.newInstance(1980, 4, 30, 6, 30, 55);
    //getting bdate in miliseconds
    long longBirthDate = birthTime.getTime();
    system.debug('My birthdate in long (miliseconds) is'+ longBirthDate);
}


}