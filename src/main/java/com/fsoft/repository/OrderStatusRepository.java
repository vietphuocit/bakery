package com.fsoft.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.entity.OrderStatus;
@Repository
public interface OrderStatusRepository extends JpaRepository<OrderStatus, Long>{
	OrderStatus findByName(String name);
}
