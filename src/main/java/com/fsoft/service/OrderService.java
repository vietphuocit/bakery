package com.fsoft.service;

import java.util.List;

import com.fsoft.dto.request.DetailRequest;
import com.fsoft.entity.OrderDetails;

public interface OrderService {
	boolean addToCart(DetailRequest orderRequest, String usernameCustomer);

	List<OrderDetails> getCart(String username);
}
