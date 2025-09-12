public class actionSupportController {
    public string str{set; get;}
    public string inputVal{set; get;}
    public list<selectOption> selectOptionList{set; get;}
    
    
    public actionSupportController(){
        selectOptionList = new list<selectOption>();
        
    }
    
    
    public void clickHandler(){
        system.debug('inside click handler '+str);
        SelectOption option1 = new SelectOption(inputVal , inputVal);
        selectOptionList.add(option1);
         system.debug('inside click handler '+str);
        
        
    }
    
    public void chnagehandler(){
        system.debug('inside change handler' + str);
    }
    
    
}
/*public class Select_list_controller {
public string str{set; get;}
public list<string> strlist{set; get;}
public List<SelectOption> selOptionList{set; get;}
public Select_list_controller(){     
strlist = new list<string>();
selOptionList = new List<SelectOption>();
strlist.add('aaa');
strlist.add('bbb');
strlist.add('ccc');
system.debug(' inside costructor ' + strlist);
}
public void ClickHandeler(){
system.debug(' inside Method ' + str);
SelectOption option1 = new SelectOption('xxx', 'XXX');
SelectOption option2 = new SelectOption('yyy', 'YYY');
SelectOption option3 = new SelectOption('zzz', 'ZZZ');
selOptionList.add(option1);
selOptionList.add(option2);
selOptionList.add(option3);
}
}*/