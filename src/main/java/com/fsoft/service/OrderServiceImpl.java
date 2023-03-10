package com.fsoft.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fsoft.dto.request.DetailRequest;
import com.fsoft.entity.Order;
import com.fsoft.entity.OrderDetails;
import com.fsoft.entity.OrderStatus;
import com.fsoft.entity.PrimaryKeyProduct;
import com.fsoft.entity.Product;
import com.fsoft.repository.OrderDetailsRepository;
import com.fsoft.repository.OrderRepository;
import com.fsoft.repository.OrderStatusRepository;
import com.fsoft.repository.ProductRepository;
import com.fsoft.repository.UserRepository;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderRepository orderRepository;

	@Autowired
	OrderDetailsRepository orderDetailsRepository;

	@Autowired
	OrderStatusRepository orderStatusRepository;

	@Autowired
	ProductRepository productRepository;

	@Autowired
	UserRepository userRepository;

	@Override
	public boolean addToCart(DetailRequest orderRequest, String username) {
		OrderStatus orderStatus = orderStatusRepository.findByName("giỏ hàng");
		Order oldOrder = orderRepository.findByOrderStatusAndCustomer_username(orderStatus, username);

		Product product = productRepository
				.findByDeletedFalseAndPrimaryKeyProduct(new PrimaryKeyProduct(orderRequest.getId(), orderRequest.getSize()));

		if (product == null)
			return false;

		if (oldOrder != null) {

			OrderDetails orderDetails = orderDetailsRepository.findByOrderAndProduct(oldOrder, product);

			if (orderDetails != null) {
				orderDetails.setTotalMoney((long) (product.getPrice() * orderRequest.getQuantity()));
				orderDetails.setQuantity(orderDetails.getQuantity() + orderRequest.getQuantity());
			} else {
				orderDetails = new OrderDetails(orderRequest.getQuantity(),
						(long) product.getPrice() * orderRequest.getQuantity(), oldOrder, product);
			}

			orderDetailsRepository.save(orderDetails);
			return true;
		}

		try {
			Order order = orderRepository.save(new Order(orderStatus, userRepository.findByUsername(username).get()));

			orderDetailsRepository.save(new OrderDetails(orderRequest.getQuantity(),
					(long) product.getPrice() * orderRequest.getQuantity(), order, product));

			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addToFavourite(Long id, String username) {
		OrderStatus orderStatus = orderStatusRepository.findByName("yêu thích");
		Order oldOrderFavourite = orderRepository.findByOrderStatusAndCustomer_username(orderStatus, username);

		List<Product> products = productRepository.findByDeletedFalseAndPrimaryKeyProduct_id(id);

		if (products == null || products.isEmpty())
			return false;

		Product product = products.get(0);

		if (oldOrderFavourite != null) {
			OrderDetails orderDetails = orderDetailsRepository.findByOrderAndProduct(oldOrderFavourite, product);

			if (orderDetails != null) {
				orderDetailsRepository.delete(orderDetails);
			} else {
				orderDetailsRepository.save(new OrderDetails(0, (long) 0, oldOrderFavourite, product));
			}

			return true;
		}

		try {

			Order order = orderRepository.save(new Order(orderStatus, userRepository.findByUsername(username).get()));

			orderDetailsRepository.save(new OrderDetails(0, (long) 0, order, product));

			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<OrderDetails> getCart(String username) {
		OrderStatus orderStatus = orderStatusRepository.findByName("giỏ hàng");
		Order oldOrder = orderRepository.findByOrderStatusAndCustomer_username(orderStatus, username);
		
		if (oldOrder == null)
			return null;

		return orderDetailsRepository.findByOrder(oldOrder);
	}

	@Override
	public List<OrderDetails> getFavourite(String username) {
		OrderStatus orderStatus = orderStatusRepository.findByName("yêu thích");
		Order oldOrder = orderRepository.findByOrderStatusAndCustomer_username(orderStatus, username);

		if (oldOrder == null)
			return null;

		return orderDetailsRepository.findByOrder(oldOrder);
	}
}
