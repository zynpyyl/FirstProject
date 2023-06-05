import { LightningElement } from 'lwc';

export default class TrailblazerList extends LightningElement {


    searchKey="";

    columns = [
        { label: 'Id', fieldName: 'id' },
        { label: 'First Name', fieldName: 'firstName' },
        { label: 'Last Name', fieldName: 'lastName' },
        { label: 'Badges', fieldName: 'badges' },
        { label: 'Points', fieldName: 'points' },
    ];

    trailblazerArray = [{id: 1, firstName: 'Ben', lastName: 'Long', badges: 300, points: 189000},
                        {id: 2, firstName: 'Dan', lastName: 'Good', badges: 200, points: 150000},
                        {id: 3, firstName: 'Josh', lastName: 'Lang', badges: 100, points: 115000},
                        {id: 4, firstName: 'Mike', lastName: 'Al', badges: 425, points: 305000},
                        {id: 5, firstName: 'Liv', lastName: 'White', badges: 300, points: 202000},
                        {id: 6, firstName: 'Steve', lastName: 'Last', badges: 90, points: 107000},
                        {id: 7, firstName: 'Ahmet', lastName: 'Ay', badges: 440, points: 289000},
                        {id: 8, firstName: 'Ivy', lastName: 'Poison', badges: 175, points: 180000}];

    filteredTrailblazer=this.trailblazerArray;

    handleSearchKeyChange(event){

        this.searchKey=event.target.value;

        this.filteredTrailblazer=this.trailblazerArray.filter(each=>each.firstName.toLowerCase().includes(this.searchKey.toLowerCase()));
        





    }



}