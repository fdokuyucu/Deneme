public class DML2_Assgn {
    public static void insert_dml() {
        List<Account> listacc = new List<Account>();
        Account first= new Account();
        first.Name='Fatih';
        listacc.add(first);

        Account second= new Account();
        second.Name= 'Assignment';
        listacc.add(second);

        insert listacc;
        System.debug(listacc);

    }
    public static void name() {
        
    }
}
