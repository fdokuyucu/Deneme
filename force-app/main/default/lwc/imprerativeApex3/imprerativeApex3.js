import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';


import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class ImprerativeApex3 extends LightningElement {

    accountRtId;

    @wire(getPicklistValues,{fieldApiName:  INDUSTRY_FIELD, recordTypeId: String })
}