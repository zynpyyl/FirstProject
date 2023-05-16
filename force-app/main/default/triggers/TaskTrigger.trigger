trigger TaskTrigger on Task (before delete) {
 

id id1 = userinfo.getProfileId();

List<Profile> profileName = [Select name from profile where id = :id1];

for(Profile each : profileName)
    if(each.Name!='System Administrator'){
       each.addError('cant delete');
}

}

