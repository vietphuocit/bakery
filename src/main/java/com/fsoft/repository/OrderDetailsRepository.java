package com.fsoft.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.entity.Order;
import com.fsoft.entity.OrderDetails;
import com.fsoft.entity.Product;

@Repository
public interface OrderDetailsRepository extends JpaRepository<OrderDetails, Long> {
	OrderDetails findByOrderAndProduct(Order order, Product product);

	List<OrderDetails> findByOrder(Order order);
}
