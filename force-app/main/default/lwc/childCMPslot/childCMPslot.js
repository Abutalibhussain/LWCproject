import { LightningElement ,api} from 'lwc';

export default class ChildCMPslot extends LightningElement {
    @api studentInfo;
       tileClickHandler(event){
        //   alert('Tile clicked was called');
           const selectEvent = new CustomEvent('tileclick', { detail: this.studentInfo , bubbles: true});
           this.dispatchEvent(selectEvent);
        }
       }
