import { LightningElement } from 'lwc';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import OPP_OBJECT from'@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import ACCOUNT_NAME from '@salesforce/schema/Opportunity.AccountId';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGE_NAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';


export default class LightningOpportunityform extends LightningElement {
    recordId="0068Z00001XJgDaQAL";
    objectName=OPP_OBJECT;
    fields=[NAME_FIELD,ACCOUNT_NAME,TYPE_FIELD,STAGE_NAME_FIELD,AMOUNT_FIELD];

     
    successHandler(){
        const successToast = new ShowToastEvent({
            title:"ALL DONE!!!!",
            message:"The Opportunity record has been saved successfully.",
            variant:"My Label"
        });
        this.dispatchEvent(successToast);
    }
}