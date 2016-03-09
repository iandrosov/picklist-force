/**
 * META_PicklistSampleController class demonstrate use of Piclist metadata Utility 
 * META_ObjectPicklistUtil class to list any picklist values.
 *
 * @author Igor Androsov
 * @version 1.0
 */
public class META_PicklistSampleController {

    // Method return simple Opportunity Lead Source options name:value pairs
    public List<SelectOption> getOptySource(){
     	List<META_ObjectPicklistUtil.PickList> lst = META_ObjectPicklistUtil.getSelectOptionFromPicklist('Opportunity', 'LeadSource', false);
		List<SelectOption> sl = new List<SelectOption>();
        for (META_ObjectPicklistUtil.PickList s : lst){
            sl.add( new SelectOption(s.value, s.label));
      		System.debug('#### '+s.value+' '+s.label);
		}
        return sl;
    }
    
    public Map<String,List<META_ObjectPicklistUtil.PickList>> getTestDependent(){
       Map<String,List<META_ObjectPicklistUtil.PickList>> mp = META_ObjectPicklistUtil.GetDependentOptionsEX('Test__c', 'myselect__c', 'mycity__c');
       for (String key : mp.keySet()) {
    
          List<META_ObjectPicklistUtil.PickList> lst = mp.get(key);
          for (META_ObjectPicklistUtil.PickList s : lst){
            System.debug('### '+key+' - '+s.label+':'+s.value);
          }
       }
       return mp;
    }
}