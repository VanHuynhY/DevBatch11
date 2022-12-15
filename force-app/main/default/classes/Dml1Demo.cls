public class Dml1Demo {
    public static void dml1InsertDemo_stndObj() {
        //create a new account record using apex code (DML)
        //1. create new instance
        Account acc = new account();
        //2. set values to fields
        acc.Name = 'SoftInnovas';
        system.debug('NOT inserted ' + acc);
        //dml.
        insert acc; //booom
        system.debug('INSERTED ' + acc);
    }

    public static void dml1InsertDemo_cstmObj() {
        //1. create new instance
        Salesforce_project__c spNew = new Salesforce_project__c();
        //2. set field values
        spNew.project_name__c = 'Teach DML to batch 11';
        spNew.description__c = 'Everybody is doing great. Keep it up.';
        
        //3 dml
        insert spNew;

    }
    public static void dml1UpdateDemo_1() {
        //create new instance
        account acc = new account();
        acc.Name = 'SoftInnovas';
        insert acc;

        //change field values
        acc.Name = 'Saleforce Inc.';
        //update dml
        update acc;
        system.debug(acc);



    }

}
