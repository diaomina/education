package com.soft.action;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
*
*@author zxb
*@version 2019年10月20日上午9:37:50
*/
@Controller
@RequestMapping("/login")
public class LoginAction {
	@RequestMapping("/login1")
	public String toPaperPage(){
		
		return "homepage/NewFile";
	}
	
	@RequestMapping("/login2")
	public String toPaperPage2(){
		
		return "homepage/IntoStudent";
	}
}
