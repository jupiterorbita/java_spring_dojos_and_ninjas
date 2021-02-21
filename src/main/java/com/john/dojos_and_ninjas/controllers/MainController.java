package com.john.dojos_and_ninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.john.dojos_and_ninjas.models.Dojo;
import com.john.dojos_and_ninjas.models.Ninja;
import com.john.dojos_and_ninjas.services.DojoService;
import com.john.dojos_and_ninjas.services.NinjaService;

@Controller
public class MainController {
	
	@Autowired
	private DojoService dojoService;
	@Autowired
	private NinjaService ninjaService;

	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/ninjas")
	public String showNinjas(@ModelAttribute("ninja") Ninja ninja, Model x) {
		x.addAttribute("dojos", dojoService.allDojos());
		x.addAttribute("ninjas", ninjaService.allNinjas());
		return "ninjas.jsp";
	}
	@PostMapping("/ninjas")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model x, @RequestParam("dojo") Dojo d) {
		if (result.hasErrors()) {
			x.addAttribute("dojos", dojoService.allDojos());
			x.addAttribute("ninjas", ninjaService.allNinjas());
			return "ninjas.jsp";
		} else {
			ninjaService.createNinja(ninja);
			return "redirect:/dojos/" + d.getId();
		}
	}
	
	@GetMapping("/dojos")
	public String showDojos(@ModelAttribute("dojo") Dojo dojo, Model x) {
		x.addAttribute("dojos", dojoService.allDojos());
		return "dojos.jsp";
	}
	@PostMapping("/dojos")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result, Model x) {
		if (result.hasErrors()) {
			x.addAttribute("dojos", dojoService.allDojos());
			return "dojos.jsp";
		} else {
			dojoService.createDojo(dojo);
			return "redirect:/dojos";
		}
	}
	
	@GetMapping("/dojos/{id}")
	public String showDojo(@PathVariable Long id, Model x) {
		x.addAttribute("dojo", dojoService.findDojo(id));
		return "results.jsp";
	}
}

