import { LightningElement } from 'lwc';

export default class DemoGenelCalisma extends LightningElement {
    fullName="Jhon Doe";
    Job="Developer";
    location={
        city:"Atlanta",
        Country:"USA",
        poctalCode:"30040"
    }
     value;
     get options(){
        return [
            { label: 'ClassA', value: 'ClassA' },
            { label: 'ClassB', value: 'ClassB' },
            { label: 'ClassC', value: 'ClassC' },
        ];
     }
     handleChange(event){
        this.value=event.detail.value;
     }
     deger = true;
    degerTrue = 'True durumundaki template göründü..';
    degerFalse = 'False durumundaki template göründü..';

    handleClick() {
        this.deger = !this.deger;
        // deger variablenin valuesunu tersine çevir yani true ise false olsun false true olsun..
    }
}