import { LightningElement } from 'lwc';

export default class ForEach extends LightningElement {
    contacts=[
        {
            id:1,
            name:'Zeynep Yayla',
            title:'SF Admin'
        },
        {
            id:2,
            name:'Nesibe Sabanci',
            title:'SF Developer'
        },
        {
            id:3,
            name:'Mahfooz Parwani',
            title:'SF Architect'
        }

    ]



}