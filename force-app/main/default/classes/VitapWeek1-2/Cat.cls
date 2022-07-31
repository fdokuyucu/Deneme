public class Cat {
    public String name='';
    public String color='';

    public cat(){
        System.debug('Constructor called');
    }

    public Cat(string x, String y) {
        this.color=x;
        this.name=y;
        sleeping();
        
    }
    public void sleeping(){
        System.debug(this.name +'sleeping');
    }

}
