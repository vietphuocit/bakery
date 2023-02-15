package com.fsoft.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.fsoft.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	@Query("SELECT p FROM Product p ORDER BY p.primaryKeyProduct.id")
    List<Product> findAllSortByCity();

	@Query("SELECT p.primaryKeyProduct.id FROM Product p WHERE p.name = :name")
	Long findIdByName(@Param("name") String name);
}
