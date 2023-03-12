package com.fsoft.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.fsoft.entity.PrimaryKeyProduct;
import com.fsoft.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

	List<Product> findByDeletedFalseAndCategory_id(Long id);

	List<Product> findByDeletedFalseOrderByPrimaryKeyProductAsc();

	@Query("SELECT p FROM Product p WHERE deleted = false GROUP BY p.name")
	List<Product> findByDeleteFalseAndGroupByName();

	Product findByDeletedFalseAndPrimaryKeyProduct(PrimaryKeyProduct primaryKeyProduct);

	List<Product> findByDeletedFalseAndName(String name);

	List<Product> findByDeletedFalseAndPrimaryKeyProduct_id(Long id);
}
