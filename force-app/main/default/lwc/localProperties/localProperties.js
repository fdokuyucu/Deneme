import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name; //undefined
    fullName="Salesforce Developer";
    age=40;
    location={
        city:"Atlanta",
        country:"United States",
        postalCode:"30040"
    };
    fruits=["banana","apple","grape","watermelon"];
}