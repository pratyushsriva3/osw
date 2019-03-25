package com.charan.spring.hibernate.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexCntrl {

	
	@RequestMapping("/")
	public String toindex() {
		return "index";
	}
}
