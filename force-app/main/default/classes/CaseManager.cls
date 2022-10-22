@RestResource(urlMapping='/Case/*')
global with sharing class CaseManager {
    /* https://yildizkent-dev-ed.my.salesforce.com/services/apexrest/Case/* */
    @HttpGet
    global static Case getCase(){
        //https://yildizkent-dev-ed.my.salesforce.com/services/apexrest/Case/5008Z00001yVLlrQAG 
        RestRequest Request= RestContext.Request;
        String RequestUrl = Request.requestURI;
        integer lastIndex= RequestUrl.lastIndexOf('/');
        id caseId = RequestUrl.substring(lastIndex+1);
        case cs = [select CaseNumber,Subject,Priority,Origin,Description from case where id = :caseId LIMIT 1];
        return cs;
    }
    @HttpPost
    global static Id createCase(String subject, String priority, String origin, String description){
        Case cs= new Case();
        cs.Subject= subject;
        cs.Priority= priority;
        cs.Origin = origin;
        cs.Description= description;
        insert cs;
        return cs.Id;
    }
    /* https://yildizkent-dev-ed.my.salesforce.com/services/apexrest/Case/{caseId} */
    @HttpDelete
    global static String deleteCase(){
        RestRequest request = RestContext.request;
        String uri= request.requestURI;
        integer lastindex= uri.lastIndexOf('/');
        id caseId= uri.substring(lastIndex+1);
        case cs = [select id from case where id = :caseId LIMIT 1];
        delete cs;
        return 'Case has been deleted successfully';
    }
    @HttpPut
    global static Id upsertCase( String id, string subject, String priority, String origin, String description){
        Case cs = new Case();
        cs.Subject=subject;
        cs.Priority=priority;
        cs.Origin=origin;
        cs.Description=description;
        upsert cs;
        return cs.Id;
    }
    @HttpPatch
    global static Case updateCase(){
        RestRequest request = RestContext.request;
        string jsonString = request.requestBody.toString();
        Map<String, Object> caseInfo =(Map<String,Object>) JSON.deserializeUntyped(jsonString);
        system.debug(caseInfo);
        Case cs = new Case();
        for (String key : caseInfo.keySet()) {
            cs.put(key,caseInfo.get(key));
        }
        update cs;
        return cs;
    
    }
}


/* https://yildizkent-dev-ed.my.salesforce.com/services/apexrest/Case/* */
/* https://yildizkent-dev-ed.my.salesforce.com/services/apexrest/Case/5008Z0000200H7vQAE */