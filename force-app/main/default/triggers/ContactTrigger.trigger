trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        if(Trigger.isUpdate) {
            system.debug('we are in before insert trigger.');
            ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }
}


   /*
    //I want to print when wwe are in BEFORE
    if (Trigger.isBefore) {
        system.debug('We are in BEFORE. NOT SAVED');
        if(Trigger.isInsert) {
            system.debug('we are in before insert trigger.');
        }
        if(Trigger.isUpdate) {
            system.debug('we are in before update trigger.');
            ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }
    if (Trigger.isAfter) {
        system.debug('We are in AFTER. SBNC');
        if(Trigger.isInsert) {
            system.debug('we are in after insert trigger.');
        }
        if(Trigger.isUpdate) {
            system.debug('we are in after update trigger.');
        }
    }
    */

