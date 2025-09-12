public class SecondScenario {

    public integer ForAcc{set;get;}
    public integer ForCas{set;get;}
    public integer ForOpp{set;get;}
    public integer ForCon{set;get;}
    Account act;
    public void methodOne(){
        for(integer i = 0 ; i<= ForAcc; i++){
            Account act = new Account();
            act.Name = 'Account record insert Assignment' + i;
            act.Phone = '123456';
            insert act;
            system.debug('Account record' + act);
        }
        for(integer i =0 ; i<=ForCas ; i++){
            Case ca = new Case();
            ca.Origin = 'Email';
            ca.Status = 'Closed';
            ca.AccountId = act.Id;
            insert ca;
            system.debug('Case record' + ca);
        }
        
        for(integer i =0 ; i<=ForOpp ; i++){
            Opportunity oo = new Opportunity();
            oo.Name = 'Opportunity record insert assignment' + i;
            oo.StageName = 'Perception Analysis';
            oo.CloseDate = Date.today();
             oo.AccountId = act.Id;
            insert oo;
            system.debug('Opportunity record' + oo);
        }
        for(integer i =0 ; i<=ForCon ; i++){
            Contact cc = new contact();
            cc.LastName = 'Contact record insert assignment' + i;
            cc.Phone = '1234567';
            cc.AccountId = act.Id;
            insert cc;
            system.debug('Contact record' + cc);
        }
    }
}