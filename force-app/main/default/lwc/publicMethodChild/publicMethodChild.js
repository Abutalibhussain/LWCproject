import {  LightningElement,track,api } from 'lwc';

export default class PublicMethodChild extends LightningElement {
     @track value = ['Red'];

    options = [
            { label: 'Red', value: 'Red' },
            { label: 'Green', value: 'Green' },
            { label: 'Blue', value: 'Blue' },
            { label: 'Yellow', value: 'Yellow' }
        ];
    
  @api handleSelectedValues(checkboxVal) {
    alert('checkbox value is: ' + checkboxVal);
  //  this.value = checkboxVal;
    
    const salectedVal = this.options.find(function(item){
        return checkboxVal == item.value;
    });
    if(salectedVal){
        this.value = checkboxVal;
        return 'sucessfully checked';
    }
    return 'not checked';
}

}