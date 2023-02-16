package com.fsoft.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.entity.DeliveryMethod;
@Repository
public interface DeliveryMethodRepository extends JpaRepository<DeliveryMethod, Long>{
		
}
