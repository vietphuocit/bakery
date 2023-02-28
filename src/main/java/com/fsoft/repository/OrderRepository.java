package com.fsoft.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.entity.Order;
import com.fsoft.entity.OrderStatus;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
	Order findByOrderStatusAndCustomer_username(OrderStatus orderStatus, String username);

	Order findByOrderStatus_nameAndCustomer_username(String name, String username);
}
