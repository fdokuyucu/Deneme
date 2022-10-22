import { LightningElement, wire } from 'lwc';
import SearchStudentsByPostalCode from '@salesforce/apex/StudentCtrl.SearchStudentsByPostalCode';
const COLUMNS=[
    {label:"Student Name",fieldName:"Student_Name__c",type:"text"},
    {label:"Class",fieldName:"Number__c",type:"number"},
    {label:"Email",fieldName:"Email__c",type:"email"},
    {label:"Postal Code",fieldName:"Postal_Code__c",type:"text"},
    {label:"Mobile",fieldName:"Mobile__c",type:"tel"}
];

export default class StudentSearch extends LightningElement {

    searchWord;
    students;
    error;
    columns=COLUMNS;

    

    changeHandler(event){
        this.searchWord= event.target.value;

        if (this.searchWord.length>0) {
            SearchStudentsByPostalCode({postalCode: this.searchWord })
                .then(result=>{
                    if (result.length == 0 ) {
                        this.error="There are no matching student found. Try another key words!";
                        this.students=undefined;
                    }else{
                        this.students=result;
                        this.error=undefined;
                    }
                })
                .catch(error=>{
                    this.error = error;
                    this.students= undefined;
                })
        }
    }

}
