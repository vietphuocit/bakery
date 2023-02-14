package com.fsoft.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.fsoft.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	List<Product> findAll(Sort sort);

	@Query("SELECT p.id FROM Product p WHERE p.name = :name")
	Long findIdByName(String name);
}
