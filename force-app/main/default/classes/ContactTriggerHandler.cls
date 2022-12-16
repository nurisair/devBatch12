public with sharing class ContactTriggerHandler {
    public static void updateContactValidation(list<contact> conTriggerNew, list<contact> conTriggerOld, map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
        for (contact eaCon : conTriggerNew) {
            Contact oldContact=conTriggerOldMap.get(eaCon.id);
            if (oldContact.Leadsource=='Partner Referral') {
                eaCon.addError('Cannot update Partner Referral Contact');
            }
        }
    }
    public static void updateContactValidation1(list<contact> conTriggerNew, list<contact> conTriggerOld, map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap ) {
        for (contact eaCon : conTriggerNew) {
            if (eaCon.LeadSource!=conTriggerOldMap.get(eaCon.Id).LeadSource) {
                eaCon.LeadSource.addError('Come on Man! No updates on Lead Source!');
            }
        }
    }
}
