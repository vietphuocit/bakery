package com.fsoft.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.fsoft.entity.PaymentMethod;
@Repository
public interface PaymentMethodRepository extends JpaRepository<PaymentMethod, Long>{
}	
