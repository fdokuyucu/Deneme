import { LightningElement } from 'lwc';

export default class QuerySelectorsDemo extends LightningElement {
    
    cities =["Atlanta","Las Vegas", "Maras", "San Diego"];
    
    clickHandler(){
        const h1elem= this.template.querySelector('h1');
        console.log(h1elem.innerText);
        h1elem.style.color='green';
        h1elem.style.border='2px dashed blue';
        h1elem.style.backgroundColor='yellow';
        h1elem.style.backgroundPosition='center';

        const pelem = this.template.querySelector("p");
        pelem.style.color='dark purple';
        pelem.style.border='3px solid red';
        pelem.style.backgroundColor='#12827e';

        const divelem= this.template.querySelectorAll('div.child');
        divelem.forEach(item=> {
            console.log(item.innerText);

        item.style.color="pink";
        item.style.backgroundColor='#111123';
        item.setAttribute("class", "slds-align_absolute-center");
        item.style.border="2px dotted green";
        })    
     
    }
}