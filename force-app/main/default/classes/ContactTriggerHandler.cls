public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact>contriggerOld,Map<id, contact> conTriggerNewMap, Map<id, contact> contriggerOldMap) {
        //validation 1
        for (contact eachContact : conTriggerNew) {
            Contact oldContact = contriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral'){
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
    }

    public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact>contriggerOld,Map<id, contact> conTriggerNewMap, Map<id, contact> contriggerOldMap) {
        //validation 2
        for (contact eachContact : conTriggerNew) {
            Contact oldContact = contriggerOldMap.get(eachContact.id);
            if (eachContact.LeadSource != oldContact.LeadSource) {
                eachContact.LeadSource.addError('Cannot update Lead Source. Please user!');
            }
        }
    }

}
   
