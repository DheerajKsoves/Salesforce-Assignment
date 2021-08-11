public with sharing class InstituteController {
    public List<SelectOption> getSelectInstitute() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption(' ','--select--'));
        options.add(new SelectOption('KSolves','KSolves'));
        options.add(new SelectOption('Jawaharlal Nehru University ','Jawaharlal Nehru University'));
        options.add(new SelectOption('University of Delhi','University of Delhi'));
        return options;
    }

    public List<Mentor_Name__c> mentorList{get;set;}

    public void getMentorList(){
        mentorList=[select Id,Name,Designation__c from Mentor_Name__c where Select];
        System.debug('mentor'+mentorList);
    }
}
