trigger assignTrigger on Account (before update) {
    if(Trigger.isUpdate){
        for(Account acc : trigger.new){
            for(Account acc1 : trigger.old){
                if(acc1.Industry == 'Banking' && acc.Industry == 'Finance'){
                    acc.Industry = 'agriculter';
                    acc.Phone = '789';
                }
            }
        }
    }
}