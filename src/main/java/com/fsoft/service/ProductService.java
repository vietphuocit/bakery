package com.fsoft.service;

import java.util.List;

import com.fsoft.dto.request.ProductRequest;
import com.fsoft.dto.response.ProductResponse;
import com.fsoft.entity.Product;

public interface ProductService {

	List<Product> findAllOrderASCById();
	
	List<Product> findAllDistinct();

	boolean createProduct(ProductRequest productRequest);

	boolean updateProduct(Long id, ProductRequest productRequest);

	boolean deleteProduct(Long id, int size);

	List<Product> findByCategory(Long id);
	
	ProductResponse findByPrimaryKeyProductId(Long id);
	
	boolean isFavourite(Long id, String username);
}
