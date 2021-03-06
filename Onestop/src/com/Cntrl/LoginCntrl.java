package com.Cntrl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Service.AuthService;

@Component
@Controller
@RequestMapping("/user")
public class LoginCntrl {
	
	 @Autowired
	    private AuthService authenticateService;            // This will auto-inject the authentication service into the controller.
	 
	    private static Logger log = Logger.getLogger(LoginCntrl.class);
	 
	    // Checks if the user credentials are valid or not.
	    @RequestMapping(value = "/validate", method = RequestMethod.POST)
	    public ModelAndView validateUsr(@RequestParam("username")String username, @RequestParam("password")String password) {
	        String msg = "";
	        System.out.println("ajsfdbjb");
	        boolean isValid = authenticateService.findUser(username, password);
	        log.info("Is user valid?= " + isValid);
	        
	        System.out.println("In the controller.. and valid is:"+isValid);
	 
	        if(isValid) {
	            msg = "Welcome to the hospital dashboard " + username + "!";
	        } else {
	            msg = "Invalid credentials";
	        }
	 
	        return new ModelAndView("hospitaldashboard", "output", msg);
	    }

}
