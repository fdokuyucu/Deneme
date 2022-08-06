public  class case_assg {
   public static void caseinsert() {
    Case cs1= new case();
    cs1.Subject=' Testcase';
    insert cs1;
    System.debug('Insert case '+ cs1);
   }
   public static void updatecase() {
    case cs2= [select subject FROM Case where Subject like '%Testcase%' ];
    cs2.subject='Testing case 1';
    update cs2;
    System.debug('update case ' +cs2);
    }
   public static void casedelete() {
    case cs3=[select subject from case where subject like'%Testing case 1%'];
    delete cs3;
    System.debug('deleted case '+cs3);
    } 

}