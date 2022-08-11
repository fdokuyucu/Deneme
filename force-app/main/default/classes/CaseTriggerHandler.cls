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
}
