package com.cryptodea.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cryptodea.models.Idea;
import com.cryptodea.services.IdeaService;



@Controller
@RequestMapping("/")
public class AppController {
	@Autowired
	private IdeaService ideaService;

	public AppController(IdeaService ideaService) {
		this.ideaService = ideaService;
	}
	
	@GetMapping("")
	public String getIndex(@ModelAttribute("idea") Idea idea, Model model) {
		List<Idea> ideas = this.ideaService.getIdeas();
		model.addAttribute("idea", ideas);
		return "index.jsp";
	}
	
	@GetMapping("/create")
	public String create(@ModelAttribute("idea") Idea idea) {
		return "create.jsp";
	}
	
	@PostMapping("/create")
	public String saveIdea(@Valid @ModelAttribute("idea") Idea idea, BindingResult result, Model model) {
		if(result.hasErrors()) {
		    model.addAttribute("idea", idea);
		    return "create.jsp";
		}
		else {
			this.ideaService.saveIdea(idea);
			return "redirect:/";			
		}
	}
	
	@GetMapping("/{id}")
	private String showIdea(@PathVariable("id") Long id, Model model) {
		model.addAttribute("idea", this.ideaService.findById(id));
		return "view.jsp";
	}
	
	@GetMapping("/delete/{id}")
	public String delIdea(@PathVariable("id") Long id) {
		this.ideaService.deleteIdea(id);
		return "redirect:/";
	}
	
	@GetMapping("/about")
	public String about() {
		return "about.jsp";
	}
}
