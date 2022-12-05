public class PrimitiveDataTypeDemo3 {
    public void printNewDateTime(){
        Datetime dt3 = Datetime.newInstance(2021, 5, 15, 8, 5, 40);
        system.debug('dt3 is ' + dt3);

        Datetime dt4_1 = datetime.newInstance(0);
        system.debug('dt4_1 is ' + dt4_1);

        Datetime dt4_2 = datetime.newInstance(300000);
        system.debug('dt4_2 is ' + dt4_2);

        Long longTime = 1487954621154L;//milliseconds from 1970 Jan 1 000000 + milliseconds
        datetime dt4 = datetime.newInstance(longtime);
        system.debug('dt4 is ' + dt4);

        datetime dt6 = datetime.now();//current time
        system.debug('dt 6 current datetime is ' + dt6);//gmt

        datetime dt5 = datetime.newInstanceGmt(1998, 8, 4, 5, 1, 4);
        system.debug('dt5 is' + dt6);


    }
}

