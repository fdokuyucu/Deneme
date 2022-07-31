public class Car {
     //methodname= switchOn
    //return type= void
    public String carcolor='';
    public String carName= '';
    //if we donty write acsess modifier, by default it is private
    Integer maxSpeedKmPerHr= 150;
    public void switchOn(){
        //method body
        system.debug('starting the car');
}
public void Drive(){
    System.debug('driving '+ carName);
    }
public void driveAtMaxSpeed(){
    String drivingDescription = 'driving '+ carName + ' at '+maxSpeedKmPerHr+ 'km/H';
    System.debug(drivingDescription);
}    
}
