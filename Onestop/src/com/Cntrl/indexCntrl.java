package com.Cntrl;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexCntrl {

	@RequestMapping("/")
	public String toindex() {
		System.out.println("dha");
		return "index";
	}
	
}
