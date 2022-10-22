import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class GetPickListValueIndustry extends LightningElement {

        accountRtId; 
        industryOptions=[]
        selectedIndustry;

    @wire(getObjectInfo, {objectApiName: ACCOUNT_OBJECT})
    objectInfoHandler({data, error}){
        if(data) {
            console.log(data);
            this.accountRtId = data.defaultRecordTypeId;
        }
        if(error) {
            console.log(error);
        }
    }

    @wire(getPicklistValues,{fieldApiName:INDUSTRY_FIELD, recordTypeId:'$accountRtId'})
    piclistHandler({data,error}){
        if(data){
            console.log(data);
            this.industryOptions= data.values;
        }
        if(error){
            console.error(error);
        }
}
}