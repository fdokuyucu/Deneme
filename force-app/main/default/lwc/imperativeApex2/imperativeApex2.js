import searchContacts from '@salesforce/apex/ContactCtrl.searchContacts';
import { LightningElement } from 'lwc';

export default class ImperativeApex2 extends LightningElement {
    contacts;
    error;
    keyword;

    searchHandler(event) {
        this.keyword = event.target.value;
        if (this.keyword.length>0) {
            searchContacts({searchKey: this.keyword})
            .then(result => {
                this.contacts = result;
                this.error = undefined;
            })
            .catch(error => {
                this.error = error;
                this.contacts = undefined;
            })
        }else{
            this.contacts ="start Inputting some keywords"
        }
        
    }
}