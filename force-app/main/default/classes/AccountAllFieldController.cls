public without sharing class AccountAllFieldController {

public List<Account> accounts{set;get;}
Public List<String>lstFields {set;get;}
String query;   
String allFields = '';
  //constructor
  public AccountAllFieldController() {
      /*lstFields = new List<String>();
        Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map<String, Schema.SObjectField> fieldMap = schemaMap.get('Account').getDescribe().fields.getMap();
        set<string> mapset = fieldMap.keyset(); 
        accounts = new List<Account>();
      //accounts = [Select Id, name, Active__c, SLA__c, Description from Account limit 10];
      
      
        for(String str:mapset)
        {
           allFields += str +', '; 
           lstFields.add(str);
        }
        allFields = allFields.removeEnd(', ');
        query = 'SELECT '+ allFields + ' FROM Account Limit 100';
        System.debug('%%%%%%%%%%%%%%%%%%%%% '+query);
        System.debug('%%%%%%%%%%lstFieldslstFields lstFields%%%%%%%%%%% '+lstFields);
        System.debug('%%%%%%%%%%allFields allFields allFields %%%%%%%%%%% '+allFields );
        accounts = Database.query(query);*/
        
       accounts = [select id,name,description,SLA__c,Active__c from Account limit 100];
        
  }
   public Database.QueryLocator start(){
      return Database.getQueryLocator('Select id from account');
   }
 
}