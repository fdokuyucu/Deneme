public  class AssetTriggerHandler {
    public static void AssetHandlerUpdate(List<Asset> assTriggerNew, List<Asset> assTriggerOld, Map<id,Asset> assTriggerNewMap, Map<id,Asset> assTriggerOldMap ) {
       for (asset eachAss : assTriggerNew) {
        if (assTriggerOldMap==null &&eachAss.Status!='Shipped' ) {
            eachAss.Status.addError('System will only accept Shipped');
        }
       }     
    }
}
