package com.charan.spring.hibernate.ctrl;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Component
@Controller
@RequestMapping("/siuser")
public class SigninCntrl {
	
	@RequestMapping(value = "/signin")
	public String signin() {
		return "index";
	}

}
