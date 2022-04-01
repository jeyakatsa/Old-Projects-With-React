package com.bitruism.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitruism.models.Charity;
import com.bitruism.services.CharityService;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	private CharityService charityService;
	
    //index link
	@GetMapping("")
    public String Index() {
		return "/index.jsp";
    }
	
	//charities link
	@GetMapping("/charities")
    public String Charities() {
		return "/charities.jsp";
    }
	
	//submit charities link
	@GetMapping("/submit")
    public String Submit(@ModelAttribute("charity") Charity charity, Model model, HttpSession session) {
		return "/submit.jsp";
    }
	//submit charities post
	@PostMapping("/submit")
	public String addEvent(@Valid @ModelAttribute("charity") Charity charity, BindingResult result, Model model, HttpSession session) {
		if(result.hasErrors()) {
			model.addAttribute("charities", charity);
			return "/submit.jsp";
		} else {
			this.charityService.create(charity);
			return "redirect:/submitted";
		}
	}
	
	//about link
	@GetMapping("/submitted")
    public String Submitted() {
		return "/submitted.jsp";
    }
	
	//about link
	@GetMapping("/about")
    public String About() {
		return "/about.jsp";
    }
	
	
}
