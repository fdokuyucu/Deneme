import { LightningElement } from 'lwc';

export default class ConditionalRendering2 extends LightningElement {
    showData=true;
    details ={
        fullName:'Fatih Dokuyucu',
        place:'Atlanta'
    };
    clickHandler(){
        this.showData= !this.showData;
    }
}