import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class GetPickListValueRecordTypeContact extends LightningElement {

    contactRtId;
    CustomerPriortyOptions=[];
    StatusOptions=[];
    LeadSourceOptions=[];
    
    @wire(getObjectInfo, {objectApiName:CONTACT_OBJECT})
    objectInfoHandler({data,error}){
        if (data) {
            console.log(data);
            this.contactRtId= data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);
        }
    }

    @wire(getPicklistValuesByRecordType, {objectApiName: CONTACT_OBJECT, recordTypeId: '$contactRtId'})
    picklistHandler({data,error}){
        if (data) {
            console.log(data);
            this.CustomerPriortyOptions=data.picklistFieldValues.Custom_Priority__c.values;
            this.StatusOptions=data.picklistFieldValues.Status__c.values;
            this.LeadSourceOptions=data.picklistFieldValues.LeadSource.values;
        }
        if (error) {
            console.log(error);
        }
    }
}