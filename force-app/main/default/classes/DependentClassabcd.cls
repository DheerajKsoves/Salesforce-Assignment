public with sharing class DependentClassabcd {
	public String selDept {
		get;
		set;
	}
	List<selectOption> empOptions = new List<selectOption>();
	public List<selectOption> getEmpnames() {
		empOptions.clear();
		empOptions.add(new selectOption('--None--','--None--'));
		for(Employee__c objEmp : [select Id,name,department__c from Employee__c where department__r.name=:selDept]){
			empOptions.add(new selectOption(objEmp.name,objEmp.name));
		}
		return empOptions;
	}
	List<selectOption> deptOptions = new List<selectOption>();
	public List<selectOption> getDeptnames() {
		deptOptions.add(new selectOption('--None--','--None--'));
		for(Department__c objDept : [select name from Department__c]){
			deptOptions.add(new selectOption(objDept.name,objDept.name));
		}
		return deptOptions;
	}
}