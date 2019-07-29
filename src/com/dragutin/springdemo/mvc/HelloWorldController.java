package com.dragutin.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.support.HttpRequestHandlerServlet;

@RequestMapping("/hello")
@Controller
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}

	@RequestMapping("/processFormV2")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		
		String str = request.getParameter("studentName");
		str = str.toUpperCase();		
		String result = "Yo sine, " + str;
		
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processFormV3")
	public String letsShoutDudeV2(@RequestParam("studentName") String str, Model model) {
		
		str = str.toUpperCase();		
		String result = "Yo sine v3, " + str;
		
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
}
