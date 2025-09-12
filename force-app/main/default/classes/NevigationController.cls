public class NevigationController {
    public void navigationMethod(){
        string str = ApexPages.currentPage().getParameters().get('abut');
        system.debug(str);

      /*  PageReference pageRef = new PageReference('/apex/PageloadPage');
        pageRef.getParameters().put('id', 'Abu');
        pageRef.getParameters().put('age', '28');
        pageRef.getParameters().put('designation', 'devloper');
        return pageRef; */
        
    }
}