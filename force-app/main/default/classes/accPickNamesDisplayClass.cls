public with sharing class accPickNamesDisplayClass {
	List<selectOption> options = new List<selectOption>();
	public List<selectOption> getAccNames() {
		for(DataLoadTest__c acc : [select Id,name from DataLoadTest__c]) {
			options.add(new selectOption(acc.name,acc.name));
		}
		return options;
	}
}