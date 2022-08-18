public Class CaseTriggerHandler {
        public static void CaseInsert(List<Case> accTriggerNew,
                                            List<Case> accTriggerOld,
                                            Map<Id,Case> accTriggerNewMap,
                                            Map<Id,Case> accTriggerOldMap) {
        for (case eachCase2 : accTriggerNew) {
            if (eachCase2.Origin=='Email') {
                eachCase2.Status='Working';
                eachCase2.Priority='Low';
            }
        }    
                                            
        
    }
        public static void CaseUpdate(List<Case> accTriggerNew,
                                        List<Case> accTriggerOld,
                                        Map<Id,Case> accTriggerNewMap,
                                        Map<Id,Case> accTriggerOldMap) {
        for (case eachcase : accTriggerNew) {
            if (eachcase.Origin != accTriggerOldMap.get(eachcase.Id).Origin) {
                System.debug('case origin is changed for '+ eachcase.CaseNumber);
            }
        }
    }
    public static void createChildCase(List<Case> caseTriggerNew, List<Case> caseTriggerOld, Map<Id, Case> caseTriggerNewMap, Map<Id, Case> caseTriggerOldMap) {
        List<Case> newCaseList = new List<Case>();
        List<Case> listOfCase = [Select id, Description From Case where Id in :caseTriggerNew];
        for (Case x : listOfCase) {
            if(x.Description.containsIgnoreCase('password')){
                newCaseList.add(x);
            }
        }

        List<Case> newCases = new List<Case>();
        for (Case eachCase : newCaseList) {
            Case newCase = new Case();
            newCase.Subject = 'Parent Case may contain secret info, do something NOW!!!';
            newCase.ParentId = eachCase.Id;
            newCase.Priority = 'High';
            newCase.Description = 'Secret info not allowed in case';
            newCases.add(newCase);
        }
        insert newCases;
    }
}
