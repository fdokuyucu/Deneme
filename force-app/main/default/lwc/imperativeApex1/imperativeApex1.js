import getAllBlogs from '@salesforce/apex/BlogCtrl.getAllBlogs';
import { LightningElement } from 'lwc';

const COLUMNS = [
    {
        label: "Blog#",
        fieldName: "nameUrl",
        type: "url",
        typeAttributes:{
            label:{fieldName: "Name"},
        
        },
        sortable:true
    },
    {
        label: "Author",
        fieldName: "Author__c",
        type: "text"
    },
    {
        label: "Topic Name",
        fieldName: "Topic__c",
        type: "text"
    },
    {
        label: "Title",
        fieldName: "Title__c",
        type: "text"
    },
    {
        label: "Blog Content",
        fieldName: "Body__c",
        type: "text"
    }
];

export default class ImperativeApex1 extends LightningElement {

        blogs;
        error;
        columns= COLUMNS;

    fetchBlogs(){
        getAllBlogs()
        .then(result=>{
            console.log(result);
            //this.blogs=result;
            let nameUrl;
            this.blogs= result.map(blog=> {
                nameUrl= "/" + blog.Id;
                return {...blog,nameUrl}
            });
            this.error= undefined;
        })
        .catch(error => {
            console.log(error);
            this.error= error;
            this.blogs= undefined;
        })
    }
}