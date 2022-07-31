public  class Candidates {
    public String Name;
    public String Gender;
    public static String CompanyName;

    public void printCandidate(){
        System.debug('candidate Name is '+ Name+ '( '+Gender+' )');
        System.debug('company name is '+ CompanyName);    
        
    }
    public static void printCandidateInfo() {
        System.debug('company name is '+ CompanyName);
        
    }

}
