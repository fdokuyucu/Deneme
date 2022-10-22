import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import LEAD_OBJECT from '@salesforce/schema/Lead';
import TimeSinceTargetInDays from '@salesforce/schema/CaseMilestone.TimeSinceTargetInDays';

export default class GetPickListValuesRecordTypeLead extends LightningElement {

    leadRtId;
    industryOptions=[];
    ratingOptions=[];
    statusOptions=[];
    leadSourceOptions=[];
    selectedIndustry;
    selectedStatus;
    selectedLeadsource;
    selectedRating;


    @wire(getObjectInfo, {objectApiName:LEAD_OBJECT})
    objectInfoHandler({data,error}){
        if (data) {
            this.leadRtId=data.defaultRecordTypeId;
        }
        if (error) {
            console.error(error);
        }
    }


    @wire(getPicklistValuesByRecordType,{objectApiName: LEAD_OBJECT, recordTypeId: '$leadRtId'})
    pickListHandler({data,error}){
        if (data) {
            console.log(data);
            this.industryOptions=data.picklistFieldValues.Industry.values;
            this.ratingOptions=data.picklistFieldValues.Rating.values;
            this.statusOptions=data.picklistFieldValues.Status.values;
            this.leadSourceOptions=data.picklistFieldValues.LeadSource.values;
        }
        if (error) {
            console.error(error);
        }
    }

    changeHandler(event){
        if (event.target.label === "Select Industry") {
          this.selectedIndustry=event.target.value;  
        }else if(event.target.label === "Select Rating"){
            this.selectedRating=event.target.value;
        }else if( event.target.label=== "Select Lead Source"){
            this.selectedLeadsource=event.target.value;
        }else {
            this.selectedStatus = event.target.value;
        }
    }
}