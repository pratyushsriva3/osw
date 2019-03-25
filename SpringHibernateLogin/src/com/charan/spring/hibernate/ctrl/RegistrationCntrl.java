package com.charan.spring.hibernate.ctrl;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Component
@Controller
@RequestMapping("/reguser")
public class RegistrationCntrl {
	
	@RequestMapping(value = "/redirectregister")
	public String  redirectregister() {
		return "signup";
	}

}
