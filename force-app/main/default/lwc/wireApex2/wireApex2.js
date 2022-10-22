import { LightningElement, wire } from 'lwc';


import getAccountsByindustry from '@salesforce/apex/AccountCtrl.getAccountsByindustry';

const COLUMNS=[ 
    {label: "Account Name", fieldName: "Name", type: "text"},
    {label: "Account Type", fieldName: "Type", type: "text"},
    {label: "Industry", fieldName: "Industry", type: "text"},
    {label: "Annual Revenue", fieldName: "AnnualRevenue", type: "currency"}]

export default class WireApex2 extends LightningElement {

    industryType= "Biotechnology";
    accounts;
    columns= COLUMNS;


    @wire(getAccountsByindustry, {industry: "$industryType"})
    accountsHandler({data, error}){
        if (data) {
            this.accounts = data;
        }
        if (error) {
            console.error(error);
        }
    }
     get total(){
        if (this.accounts) {
            return this.accounts.length;
        }else{
            return 0;
        }
     }

}