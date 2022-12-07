package com.abcjobs.controller;


import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value="/") // home page
	public ModelAndView index(HttpServletResponse res) throws Exception {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/home") // home page
	public ModelAndView home(Model model) throws Exception {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/thankyou")
	public ModelAndView thankyou(HttpServletResponse res) throws Exception {
		return new ModelAndView("thankyou"); 
	}
	
	@RequestMapping(value="/verified")
	public ModelAndView verified() throws Exception {
		return new ModelAndView("verified"); 
	}
}
