import { LightningElement } from 'lwc';

export default class GetterComponents extends LightningElement {
    values =[ 10,20,30,40,50];
    get midNumber(){
        const mid= this.values.length/2;
        return this.values[Math.floor(mid)];
    }
}