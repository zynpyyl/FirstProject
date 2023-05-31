import { LightningElement } from 'lwc';

export default class Practice9 extends LightningElement {

    // property|field to store selected option
    selectedValue = 'VA'; 

    // this is the format that we need to provide the options 
    // for the picklist 
    get options() {
        return [
            { label: '--None--', value: '' },
            { label: 'Virginia', value: 'VA' },
            { label: 'Maryland', value: 'MD' },
            { label: 'California', value: 'CA' },
            { label: 'New Jersey', value: 'NJ' },
            { label: 'Pennsylvania', value: 'PA' },
            { label: 'Texas', value: 'TX' },
            { label: 'Kosovo', value: 'KV' },
        ];
    }

    // this is the way we get the selected value 
    // from the picklist using the event
    // it's not under event.target, it's under event.detail
    handleChange(event) {
        this.selectedValue = event.detail.value; 
    }


}