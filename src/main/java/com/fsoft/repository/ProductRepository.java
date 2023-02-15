package com.fsoft.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.fsoft.entity.PrimaryKeyProduct;
import com.fsoft.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

	List<Product> findByCategory_id(Long id);

	List<Product> findAllByOrderByPrimaryKeyProductAsc();

	Product findByPrimaryKeyProduct(PrimaryKeyProduct primaryKeyProduct);

	Product findByName(String name);

	List<Product> findAllByName(String name);
}
