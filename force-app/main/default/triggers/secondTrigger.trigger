trigger secondTrigger on Account (before insert) {
For(account acc: trigger.new){
        acc.industry= 'agriculture';
    }
  
}