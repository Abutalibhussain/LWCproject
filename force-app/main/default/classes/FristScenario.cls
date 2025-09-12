public class FristScenario {
    public integer ForAcc{set;get;}
    public integer ForCas{set;get;}
    public integer ForOpp{set;get;}
    public integer ForCon{set;get;}
    
    
    
    public void methodOne(){
        for(integer i = 0 ; i<= ForAcc; i++){
            Account act = new Account();
            act.Name = 'Account record insert Assignment';
            act.Phone = '123456';
            insert act;
            system.debug('Account record' + act);
        }
        for(integer i =0 ; i<=ForCas ; i++){
            Case ca = new Case();
            ca.Origin = 'Email';
            ca.Status = 'Closed';
            insert ca;
            system.debug('Case record' + ca);
        }
        
        for(integer i =0 ; i<=ForOpp ; i++){
            Opportunity oo = new Opportunity();
            oo.Name = 'Opportunity record insert assignment';
            oo.StageName = 'Perception Analysis';
            oo.CloseDate = Date.today();
            insert oo;
            system.debug('Opportunity record' + oo);
        }
        for(integer i =0 ; i<=ForCon ; i++){
            Contact cc = new contact();
            cc.LastName = 'Contact record insert assignment';
            cc.Phone = '1234567';
            insert cc;
            system.debug('Contact record' + cc);
        }
    }
}