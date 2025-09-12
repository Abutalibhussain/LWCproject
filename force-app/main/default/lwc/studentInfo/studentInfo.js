import { LightningElement, track } from 'lwc';

export default class StudentInfo extends LightningElement {
@track selectedStudentInfo;
@track
studentInfoParent = [{name: 'Abdul',rollNumber: '101',age: 20,},
    {name: 'aman',rollNumber: '102',age: 21,},
    {name: 'manish',rollNumber: '103',age: 22,},
    {name: 'kareem',rollNumber: '104',age: 23,},];

    constructor(){
        super();   
        this.template.addEventListener('tileclick', this.tileSelectHandler.bind(this));
        // we add this.bind(this) because we are using programatically aproch
        // and add constructor because we are using programatically aproch
    }

    tileSelectHandler(evt){
        alert('Tile selected was called' + JSON.stringify(evt.detail));
        this.selectedStudentInfo = evt.detail.name;

} 
}



