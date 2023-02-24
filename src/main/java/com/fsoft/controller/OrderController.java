package com.fsoft.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.dto.request.DetailRequest;
import com.fsoft.dto.request.OrderDetailsRequest;
import com.fsoft.entity.OrderDetails;
import com.fsoft.entity.Product;
import com.fsoft.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;

	@RequestMapping(value = { "cart/", "cart" }, method = RequestMethod.GET)
	public String cartPage(Model model, Principal principal) {

		addCartAttributes(model, principal);
		return "web/cart";
	}

	@RequestMapping(value = { "cart/{id}/", "cart/{id}" }, method = RequestMethod.POST)
	public String updateCart(Model model, Principal principal,
			@ModelAttribute("list") OrderDetailsRequest detailRequests, @PathVariable("id") Long id) {

		System.out.println(detailRequests);

		addCartAttributes(model, principal);
		return "web/cart";
	}

	@RequestMapping(value = { "cart/", "cart" }, method = RequestMethod.POST)
	public String addToCart(Model model, Principal principal, @ModelAttribute DetailRequest orderRequest) {

		orderService.addToCart(orderRequest, principal.getName());

		addCartAttributes(model, principal);
		return "web/cart";
	}

	public void addCartAttributes(Model model, Principal principal) {
		ArrayList<DetailRequest> detailRequests = new ArrayList<>();
		List<OrderDetails> orderDetails = orderService.getCart(principal.getName());

		for (OrderDetails orderDetail : orderDetails) {
			Product product = orderDetail.getProduct();
			detailRequests.add(new DetailRequest(product.getPrimaryKeyProduct().getId(),
					product.getPrimaryKeyProduct().getSize(), orderDetail.getQuantity()));
		}

		model.addAttribute("cart", orderDetails);
		model.addAttribute("list", new OrderDetailsRequest(detailRequests));
	}
}
