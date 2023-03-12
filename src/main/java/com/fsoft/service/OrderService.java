package com.fsoft.service;

import java.util.List;

import com.fsoft.dto.request.DetailRequest;
import com.fsoft.entity.OrderDetails;

public interface OrderService {
	boolean addToCart(DetailRequest orderRequest, String username);

	boolean addToFavourite(Long id, String username);

	List<OrderDetails> getCart(String username);

	List<OrderDetails> getFavourite(String username);
}
