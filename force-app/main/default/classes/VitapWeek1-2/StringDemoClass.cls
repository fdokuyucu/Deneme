public class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription = 'Learning string method in Apex Language';
        System.debug('sessionDescription = '+ sessionDescription  );

        Integer lengthOfStr = sessionDescription.length();
        System.debug('length of string is = ' + lengthOfStr);

        String sessionDescriptionInCaps = sessionDescription.toUpperCase();
        System.debug('In caps =  '+ sessionDescriptionInCaps);

       Boolean containApex1 = sessionDescription.contains('apex');
        System.debug( 'contains apex '+ containApex1);

        Boolean containApex = sessionDescription.contains('Apex');
        System.debug( 'contains Apex '+ containApex);

        String  a= 'Salesforce';
        Boolean containSalesforce = sessionDescription.contains(a);
        system.debug('contains Salesforce '+ containsalesforce);

        Boolean containapex2 =sessionDescription.containsIgnoreCase('APEX');
        System.debug('not contain APEX '+ containapex2);


    }
}
