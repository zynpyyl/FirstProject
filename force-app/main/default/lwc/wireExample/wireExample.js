import { LightningElement , wire } from 'lwc';

import getAccountWithAnnualRevenue from '@salesforce/apex/AccountController.getAccountWithAnnualRevenue';

export default class WireExample extends LightningElement {

    accountRevenue=1000000;
    accounts;
    error;

    columnsList = [
        { label: 'Account Name', fieldName: 'Name' },
        { label: 'Annual Revenue', fieldName: 'AnnualRevenue' },
    ];

    handleRevenueChange(event){
        this.accountRevenue=event.target.value;
    }

 

    @wire(getAccountWithAnnualRevenue)
    getDataFromApex({data,error}){
        if(data){
            this.accounts=data;
            this.error=undefined;
        }else if(error){
            this.accounts=undefined;
            this.error=error;
        }
    }

    get filteredAccount(){
        if(this.accounts){
            return this.accounts.filter( each => each.AnnualRevenue <= this.accountRevenue);
        }
        return [];
    }


}