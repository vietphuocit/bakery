package com.fsoft.controller;

import java.security.Principal;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.dto.request.OrderRequest;
import com.fsoft.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;

	@RequestMapping(value = { "cart/", "cart" }, method = RequestMethod.GET)
	public String cartPage(Model model, Principal principal) {

		model.addAttribute("cart", orderService.getCart(principal.getName()));
		model.addAttribute("orderDetails", new ArrayList<OrderRequest>());

		return "web/cart";
	}

	@RequestMapping(value = { "cart/", "cart" }, method = RequestMethod.POST)
	public String addToCart(Model model, Principal principal, @ModelAttribute OrderRequest orderRequest) {

		orderService.addToCart(orderRequest, principal.getName());

		model.addAttribute("cart", orderService.getCart(principal.getName()));

		return "web/cart";
	}
}
