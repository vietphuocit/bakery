package com.fsoft.service;

import java.util.List;

import com.fsoft.dto.request.ProductRequest;
import com.fsoft.entity.Product;

public interface ProductService {

	public List<Product> findAllOrderASCById();

	public boolean createProduct(ProductRequest productRequest);
}
