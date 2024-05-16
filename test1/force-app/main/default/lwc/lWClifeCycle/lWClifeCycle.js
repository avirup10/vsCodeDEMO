import { LightningElement } from 'lwc';

export default class LWClifeCycle extends LightningElement {
    constructor(){
        super();
        console.log('Constructor ran successfully.');
    }
    connectedCallback(){
        console.debug('connected callback run successfully');
    }
    renderedCallback(){
        console.debug('rendered callback run successfully');
    }
}