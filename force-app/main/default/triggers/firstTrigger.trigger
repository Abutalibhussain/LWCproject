trigger firstTrigger on Account (before update , before insert) {
    system.debug('new list ' + Trigger.new);
    
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            For(account acc: trigger.new){
                acc.industry= 'banking';
                acc.Phone = '123';
            }
        }
        if(Trigger.isUpdate){
            For(account acc1: trigger.new){
                if(Trigger.old[0].industry == 'Banking' && acc1.Industry == 'finance'){
                        acc1.addError('new error msg');
                            
                            }
               /* For(account acc: trigger.old){
                    system.debug('old list ' + Trigger.old);
                    system.debug('industry '+ acc.Industry);
                    
                }*/
            }
            
        }
        
        
    }
    
    
}