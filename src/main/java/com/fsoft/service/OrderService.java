package com.fsoft.service;

import java.util.List;

import com.fsoft.dto.request.OrderRequest;
import com.fsoft.entity.OrderDetails;

public interface OrderService {
	boolean addToCart(OrderRequest orderRequest, String usernameCustomer);

	List<OrderDetails> getCart(String username);
}
