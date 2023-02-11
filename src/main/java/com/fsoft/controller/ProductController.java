package com.fsoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {

	@RequestMapping(value = { "admin/product" }, method = RequestMethod.GET)
	public String productPage(Model model) {

		return "admin/product";
	}
}
