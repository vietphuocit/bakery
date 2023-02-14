package com.fsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.fsoft.dto.request.ProductRequest;
import com.fsoft.service.CategoryService;

@Controller
public class ProductController {

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = { "admin/product" }, method = RequestMethod.GET)
	public String productPage(Model model) {
		model.addAttribute("categories", categoryService.findAllOrderASCById());

		return "admin/product";
	}

	@RequestMapping(value = { "admin/product" }, method = RequestMethod.POST)
	public String createProduct(Model model, @ModelAttribute ProductRequest productRequest) {
		System.out.println(productRequest.getImage());
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "admin/product";
	}
}
