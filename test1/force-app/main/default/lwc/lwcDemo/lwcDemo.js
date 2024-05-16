import { LightningElement,api,track } from 'lwc';

export default class LwcDemo extends LightningElement {
    @api name;
    @api age;
    @api email;
    @api skillset;

    constructor(){
      super();
        this.name='';
        this.age;
        this.email='';
        this.skillset='';
        console.log('Constructor ran successfully.');
    }
  
  
    handleClick(e){
      console.log(this.name);
      console.log(this.age);
      console.log(this.email);
      console.log(this.skillset);
    }
    handleChange(e){
      if(e.target.name == 'name'){
        this.name=e.target.value;
      }
      if (e.target.name == 'age'){
        this.age = e.target.value;
        }
        if (e.target.name == 'email'){
        this.email = e.target.value;
        }
        if (e.target.name == 'skillset'){
          this.skillset = e.target.value;
          }
    }
    connectedCallback(){
      console.debug('connected callback run successfully');
    }
    renderedCallback(){
      console.debug('rendered callback run successfully');
    }
}