public class Car {
    public string carColor = ''; //if we don't write public access mod is private
    public string carName;
    integer maxSpeed = 150; //acccess modifier is private if we don't specify anything

    public void switchOn(){
    system.debug('start the car');
    }
    public void drive(){
        System.debug('Driving ' + carName + ', color is '+ carColor);
    }

    public void driveAtMaxSpeed(){
        string drivedescription = 'Driving '+carName+' at '+maxSpeed+'miles per hour';
        System.debug(drivedescription);
    }
}