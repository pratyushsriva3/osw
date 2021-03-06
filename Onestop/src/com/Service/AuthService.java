
package com.Service;

import java.util.List;
 
import org.apache.log4j.Logger;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
 
import com.pojo.User;
 
public class AuthService {
 
    private HibernateTemplate hibernateTemplate;
    private static Logger log = Logger.getLogger(AuthService.class);
 
    private AuthService() { }
 
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
 
    @SuppressWarnings( { "unchecked", "deprecation" } )
    public boolean findUser(String uname, String upwd) {
        log.info("Checking the user in the database");
        boolean isValidUser = false;
        //String sqlQuery = "from User where name='"+ uname + "' and password='"+ upwd +"'";
        String sqlQuery = "from User h where h.username=? and h.password=?";
        System.out.println("In the authentication service...user entered data " + uname + " pwd "+upwd);
        
        try {
        	System.out.println("y9y9y9");
        	List<User> userObj = (List) hibernateTemplate.find(sqlQuery, uname, upwd);
            System.out.println("y7y7y7");
            if(userObj != null)
            {
            	System.out.println("userObject is not null... ");
                for (User obj : userObj)
                {      
                    System.out.println("Id " + obj.getId() + 
                                    " Name " + obj.getName() + 
                                  " Editor " + obj.getPassword());
                            
                }

            }
            
            
            
            if(userObj != null && userObj.size() > 0) {
                //log.info("Id= " + userObj.get(0)).getId() + ", Name= " + userObj.get(0).getName() + ", Password= " + userObj.get(0).getPassword());
                isValidUser = true;
            }
        } catch(Exception e) {
        	System.out.println("zzzzzzzz");
            isValidUser = true;
            log.error("An error occurred while fetching the user details from the database", e);    
        }
        return isValidUser;
    }
}