import { LightningElement ,api, wire} from 'lwc';
import gConc from '@salesforce/apex/CContactL.gConc'
export default class GetContactDetails extends LightningElement {
    // @wire(gConc,{})   //first method which is not printing in the cmp but in console so going for method-II
    // testMethod(res){
    //     console.log(JSON.stringify(res.data));
    // }
    //@api conc;
    @wire(gConc)
    conc;
    showButton=true;
    showButton1=true;
    showButton2=true;
    showButton3=true;
    handleClick(){  //logic to hide the button
        this.showButton = !this.showButton;
    }
    handleClick1(){  //logic to show the button again
        this.showButton=true;
    }
    handleClick2(){
        this.showButton=false;
        this.showButton1=false;
    }
    handleClick3(){
        this.showButton=true;
        this.showButton1=true;
    }
}