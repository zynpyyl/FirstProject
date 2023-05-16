import { LightningElement } from 'lwc';

export default class UserInfo extends LightningElement {

message;


messageHandler(event){
    this.message=event.target.value;

}

}