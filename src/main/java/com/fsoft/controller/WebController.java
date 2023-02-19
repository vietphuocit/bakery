package com.fsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.service.CategoryService;
import com.fsoft.service.ProductService;

@Controller
public class WebController {
	
	@Autowired
	ProductService productService;

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String homePage(Model model) {

		return "web/home";
	}

	@RequestMapping(value = { "about/", "about" }, method = RequestMethod.GET)
	public String aboutPage(Model model) {

		return "web/about";
	}

	@RequestMapping(value = { "blog/", "blog" }, method = RequestMethod.GET)
	public String blogPage(Model model) {

		return "web/blog";
	}

	@RequestMapping(value = { "contact/", "contact" }, method = RequestMethod.GET)
	public String contactPage(Model model) {

		return "web/contact";
	}

	@RequestMapping(value = { "shop/", "shop" }, method = RequestMethod.GET)
	public String shopPage(Model model) {
		
		model.addAttribute("products", productService.findAllOrderASCById());
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "web/shop";
	}
}
