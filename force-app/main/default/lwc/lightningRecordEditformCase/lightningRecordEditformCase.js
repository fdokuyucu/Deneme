import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import CASE_OBJECT from '@salesforce/schema/Case'
import ACCOUNT_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACT_FIELD from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import PRIORTY_FIELD from '@salesforce/schema/Case.Priority';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';

export default class LightningRecordEditformCase extends LightningElement {
    recordId="5008Z00001yVSayQAG";
    objectName=CASE_OBJECT;
    fields={
        accountId: ACCOUNT_FIELD,
        contact: CONTACT_FIELD,
        subject: SUBJECT_FIELD,
        description: DESCRIPTION_FIELD,
        priorty: PRIORTY_FIELD,
        origin: ORIGIN_FIELD
    };
    successHandler(){
        const successToast= new ShowToastEvent ({
            title: "Success!!",
            message: "CAse4 record has been updated ",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }
}