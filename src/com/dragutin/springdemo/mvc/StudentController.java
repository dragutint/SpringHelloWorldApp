package com.dragutin.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/student")
@Controller
public class StudentController {

	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		
		// creating new student object
		Student theStudent = new Student();
		
		// adding student object as model attribute
		theModel.addAttribute("student", theStudent);
		
		return "student-form";
	}
	
	@RequestMapping("/processForm")
	public String processFrom(@ModelAttribute("student") Student theStudent) {
		
		System.out.println("theStudent: " + theStudent.getFirstName() + " " + theStudent.getLastName());
		
		
		return "student-confirmation";
	}
}
