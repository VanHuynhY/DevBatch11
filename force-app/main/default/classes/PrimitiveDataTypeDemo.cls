//class
public class PrimitiveDataTypeDemo {
    //method
    public void printBasicDataType(){
        system.debug('print data types');
        string batchName = 'Batch 11';
        integer totalCandidates = 80;
        boolean isAdminCompleted = true;

        system.debug('batch name is ' + batchName);
        system.debug('total candidates are ' + totalCandidates);
        system.debug('is admin completed? ' + isAdminCompleted);

        string bacthDescription = batchName + ' is the best';
        system.debug(bacthDescription);

        Decimal decvalue = 33.9;
        system.debug('decimal valus is ' + decvalue);

        Long l = 213454544L;
        system.debug('long value is ' + l);
    }

    public void printBasicDataType2(){
        Object ob1 = 'assigning string to object. allowed?';
        Object ob2 = 5000;
        Object ob3 = false;

        system.debug(ob1);
        system.debug(ob2);
        system.debug(ob3);

        ID accountId = '0014x00001LVetNAAT';
        system.debug('id -> ' + accountId);
    }
}

