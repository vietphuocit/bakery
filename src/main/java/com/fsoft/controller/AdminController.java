package com.fsoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "admin", method = RequestMethod.GET)
public class AdminController {

	@RequestMapping(value = { "" }, method = RequestMethod.GET)
	public String dashboardPage() {

		return "admin/dashboard";
	}

	@RequestMapping(value = { "product" }, method = RequestMethod.GET)
	public String productPage() {

		return "admin/product";
	}
}
