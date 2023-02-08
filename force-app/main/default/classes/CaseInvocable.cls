public with sharing class CaseInvocable {
    
    @InvocableMethod(label='Send Email and Save Activity'
    description='This method sends an email and saves the same as activity'
    category='Nuris Quick Actions')
    
    public static void sendEmailSaveActivity(list<InputRequest> inputs) {
    
        list<Messaging.SingleEmailMessage> emailMsgs = new list<Messaging.SingleEmailMessage>();
        //iterate over the inputs and create and email for each of them
    
        for (InputRequest eaIR : inputs) {
            Messaging.SingleEmailMessage msg= new Messaging.SingleEmailMessage();
            msg.setSubject('Case Created: '+ eaIR.caseNumber);
            msg.setPlainTextBody('A case has been created for your query. Please quote the case number available in the subject when you talk to us!');
            msg.setTargetObjectId(eaIR.contactId);
            msg.setSaveAsActivity(true);
            emailMsgs.add(msg);//we created the emailMsgs list just before this 
        }   
    
        if (!emailMsgs.isEmpty()) {
            Messaging.sendEmail(emailMsgs);
        }
    }
    public class InputRequest{
        
        @invocableVariable(label='Contact Id' description='Contact ID' required=true)
        public Id contactId;
        
        @invocableVariable(label='Case Number' description='Case Number' required=true)
        public String caseNumber;
    }
}