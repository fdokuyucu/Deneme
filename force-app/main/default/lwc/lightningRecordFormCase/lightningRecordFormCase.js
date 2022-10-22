import { LightningElement } from 'lwc';

import CASE_OBJECT from '@salesforce/schema/Case';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class LightningRecordFormCase extends LightningElement {
    redordId="5008Z00001yVSdBQAW";
    objectName=CASE_OBJECT;
    layoutType="Compact";

    successHandler(){
        const successToast = new ShowToastEvent({
            title:"Success!!",
            message:"The Case record has been saved successfully.",
            variant:"success"
        });
        this.dispatchEvent(successToast);
    }
}