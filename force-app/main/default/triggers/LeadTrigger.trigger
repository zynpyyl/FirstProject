trigger LeadTrigger on Lead (before insert) {

//When ever Lead is created with LeadSource as Web 
//then give rating as cold otherwise hot.

for(Lead each : trigger.new){
    if(each.LeadSource=='web')
        each.Rating='cold';
    else{
        each.Rating='hot';
    }
}

}