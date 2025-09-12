import { LightningElement , api} from 'lwc';

export default class StdInfo extends LightningElement {
   @api studentInfo;
   tileClickHandler(event){
    //   alert('Tile clicked was called');
       const selectEvent = new CustomEvent('tileclick', { detail: this.studentInfo , bubbles: true});
       this.dispatchEvent(selectEvent);
    }
   }
   // studentInfo = {name: 'Abdul',rollNumber: '1234567890', age: 20};
  // we add bubble: true in line 7, this is called programatically aproch
  // if we remove bubble: true it means we are using declarative aproch 