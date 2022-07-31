public  class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        String batchName = 'Falcon';
        Integer totalCandidates = 150;
        Boolean isAdminCompleted= true;
        System.debug(batchName);
        System.debug(totalCandidates);
        System.debug(isAdminCompleted);
    
    String batchDescription = batchName + ' are the best.';
    System.debug(batchDescription);
    }
    public void printBasicDataType2(){
        Decimal decValue= 27.01;
        System.debug('Decimal: ' + decValue);
        Long longValue= 2147483648L;
        System.debug('Long: '+ longValue);

        ID id1= '0018Z00002ezgkrQAA';
     
        System.debug('it is an ID ' + id1);
     

        
    }
    }
