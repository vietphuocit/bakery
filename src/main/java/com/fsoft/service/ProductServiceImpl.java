package com.fsoft.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import com.fsoft.dto.request.ProductRequest;
import com.fsoft.entity.PrimaryKeyProduct;
import com.fsoft.entity.Product;
import com.fsoft.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepository productRepository;

	@Override
	public List<Product> findAllOrderASCById() {
		Sort sort = new Sort(new Order(Direction.ASC, "id"));
		return productRepository.findAll(sort);
	}

	@Override
	public boolean createProduct(ProductRequest productRequest) {
		Long id = productRepository.findIdByName(productRequest.getName());
		PrimaryKeyProduct pkProduct = id == null ? new PrimaryKeyProduct(productRequest.getSize())
				: new PrimaryKeyProduct(id, productRequest.getSize());

		return false;
	}

}
