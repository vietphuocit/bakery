package com.fsoft.service;

import java.util.List;

import com.fsoft.dto.request.ProductRequest;
import com.fsoft.entity.Product;

public interface ProductService {

	List<Product> findAllOrderASCById();

	boolean createProduct(ProductRequest productRequest);

	boolean updateProduct(Long id, ProductRequest productRequest);

	boolean deleteProduct(Long id, int size);
}
