import { api, LightningElement  } from 'lwc';

export default class PriPubDemo extends LightningElement {
        message = 'private property';
       @api recordId;       //@api decorator is required to access public property in template . we use line 1 and 5
}