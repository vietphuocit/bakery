package com.fsoft.controller;

import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.dto.request.DetailRequest;
import com.fsoft.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;

	@RequestMapping(value = { "cart" }, method = RequestMethod.GET)
	public String cartPage(Model model, Principal principal) {

		model.addAttribute("cart", orderService.getCart(principal.getName()));
		return "web/cart";
	}

//	@RequestMapping(value = { "cart/{id}/", "cart/{id}" }, method = RequestMethod.POST)
//	public String updateCart(Model model, Principal principal,
//			@ModelAttribute("list") OrderDetailsRequest detailRequests, @PathVariable("id") Long id) {
//
//		System.out.println(detailRequests);
//
//		addCartAttributes(model, principal);
//		return "web/cart";
//	}

	@RequestMapping(value = { "cart" }, method = RequestMethod.POST)
	public String addToCart(Model model, Principal principal, @ModelAttribute DetailRequest orderRequest) {

		orderService.addToCart(orderRequest, principal.getName());

		model.addAttribute("cart", orderService.getCart(principal.getName()));
		return "web/cart";
	}

	@RequestMapping(value = { "wishlist" }, method = RequestMethod.GET)
	public String wishlistPage(Model model, Principal principal) {
		
		model.addAttribute("wishlist", orderService.getFavourite(principal.getName()));
		return "web/wishlist";
	}

	@RequestMapping(value = { "wishlist/{id}" }, method = RequestMethod.GET)
	public String favourite(Model model, Principal principal, @PathVariable("id") Long id) {

		orderService.addToFavourite(id, principal.getName());

		return "redirect:/product/" + id;
	}
}
