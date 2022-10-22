import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    name='Fatih';

    handleChange(event){
        this.name=event.target.value;
    }
}