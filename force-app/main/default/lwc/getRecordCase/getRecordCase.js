import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_NAME from '@salesforce/schema/Case.Account.Name';
import CONTACT_NAME from '@salesforce/schema/Case.Contact.Name';
import CASENUMBER_FIELD from '@salesforce/schema/Case.CaseNumber';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';


export default class GetRecordCase extends LightningElement {
    recordId="5008Z00001yVSayQAG";
    cs;

    @wire(getRecord, {recordId:'$recordId', layoutTypes: ['Full'], modes: ['View']})
    recordHandler({data,error}){
        if (data) {
            console.log(data);
            this.cs=data;

        }if (error) {
            console.error(error);
        }
    }

    get account (){
        return getFieldValue(this.cs, ACCOUNT_NAME);
    }
    get contact(){
        return getFieldValue(this.cs, CONTACT_NAME);
    }
    get casenumber (){
        return getFieldValue(this.cs, CASENUMBER_FIELD);
    }
    get subject(){
        return getFieldValue(this.cs, SUBJECT_FIELD);
    }
}