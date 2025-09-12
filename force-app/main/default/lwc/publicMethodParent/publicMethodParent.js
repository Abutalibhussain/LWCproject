import { LightningElement } from 'lwc';

export default class PublicMethodParent extends LightningElement {
inputVal;
inputChangeHandler(e){
this.inputVal = e.target.value;
}



clickHandler() {
    const childCmp = this.template.querySelector('c-public-method-child');
   const returnMSG = childCmp.handleSelectedValues(this.inputVal);
   alert('return message is: ' + returnMSG);
}

}
