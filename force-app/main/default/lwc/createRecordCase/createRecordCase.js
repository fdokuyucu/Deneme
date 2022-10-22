import ThirdSic from '@salesforce/schema/DandBCompany.ThirdSic';
import { LightningElement } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import { createRecord } from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class CreateRecordCase extends LightningElement {
    formdata={};

    

    changeHandler(event){
        const {name,value}= event.target;
        //const name= event.target.name;
        //const value = event.target.value;
        this.formdata[name]= value;
    }

    saveContact(){
        const recordInput = {
            apiName: CONTACT_OBJECT.objectApiName,
            fields: this.formdata
        };

        //createRecord({recordInput:recordInput})
        createRecord(recordInput)

        .then (result => {
            console.log(result);
            const SuccessToast = new ShowToastEvent({
                title:"Success",
                message: "Contact has been created ",
                variant:"success"
            });
            this.dispatchEvent(SuccessToast);
            this.template.querySelector('form.contactform').reset();

        })
        .catch(error=> {
            console.error(error);
        })
    }
}