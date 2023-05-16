trigger CaseTrigger on Case (before insert) {

//Whenever a case is created with origin as email 
//then set status as new and Priority as Medium.

for(Case each : trigger.new){
    if(each.Origin=='email'){
        each.Status='new';
        each.Priority='low';
    }
}





}