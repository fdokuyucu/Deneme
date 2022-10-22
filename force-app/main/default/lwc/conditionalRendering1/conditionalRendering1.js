import { LightningElement } from 'lwc';

export default class ConditionalRendering1 extends LightningElement {
    showContent =false;
    dataIftrue='This will be visible if showContent is true';
    dataIfFalse='This will be visible if showContent is false';
}