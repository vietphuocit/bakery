package com.fsoft.service;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fsoft.dto.request.ProductRequest;
import com.fsoft.entity.GeneratedIdProduct;
import com.fsoft.entity.PrimaryKeyProduct;
import com.fsoft.entity.Product;
import com.fsoft.repository.CategoryRepository;
import com.fsoft.repository.GeneratedIdProductRepository;
import com.fsoft.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ServletContext servletContext;

	@Autowired
	ProductRepository productRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	GeneratedIdProductRepository generatedIdProductRepository;

	@Override
	public List<Product> findAllOrderASCById() {
		return productRepository.findAllByOrderByPrimaryKeyProductAsc();
	}

	@Override
	public boolean createProduct(ProductRequest productRequest) {
//		System.out.println(productRequest.getName());
//		Product product = productRepository.findByName(productRequest.getName());
//		Long id = (product != null) ? product.getPrimaryKeyProduct().getId() : null;
//
//		PrimaryKeyProduct pkProduct = (id == null)
//				? new PrimaryKeyProduct(getGeneratedIdProduct(), productRequest.getSize())
//				: new PrimaryKeyProduct(id, productRequest.getSize());
//
//		Category category = categoryRepository.findOne(productRequest.getCategoryId());
//		if (category == null)
//			return false;
//
//		try {
//			String fileName = saveImage(productRequest.getImage());
//			productRepository.save(new Product(pkProduct, productRequest.getName(), productRequest.getDescription(),
//					productRequest.getPrice(), productRequest.getQuantity(), productRequest.getDiscount(), fileName,
//					category));
//			return true;
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//			return false;
//		}
		
		return false;
	}

	@Override
	public boolean updateProduct(Long id, ProductRequest productRequest) {
//		List<Product> products = productRepository.findAllByName(productRequest.getName());
//
//		for (Product product : products) {
//			if (product.getPrimaryKeyProduct().getSize() == productRequest.getSize()) {
//				product.setCategory(categoryRepository.findOne(productRequest.getCategoryId()));
//				product.setDescription(productRequest.getDescription());
//				product.setDiscount(productRequest.getDiscount());
//				product.setQuantity(productRequest.getQuantity());
//
//				String fileName = saveImage(productRequest.getImage());
//				product.setImage(fileName);
//
//				productRepository.save(product);
//				return true;
//			}
//		}

		return false;
	}

	@Override
	public boolean deleteProduct(Long id, int size) {
		Product product = productRepository.findByPrimaryKeyProduct(new PrimaryKeyProduct(id, size));
		if (product != null) {
			productRepository.delete(product);
			return true;
		}

		return false;
	}

	public Long getGeneratedIdProduct() {
		List<GeneratedIdProduct> ids = generatedIdProductRepository.findAll();
		if (ids != null && !ids.isEmpty()) {
			generatedIdProductRepository.updateCount();
			return ids.get(0).getCount();
		} else {
			generatedIdProductRepository.save(new GeneratedIdProduct((long) 0));
			return (long) 0;
		}
	}

	public String saveImage(MultipartFile multipartFile) {
		String fileName = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy")) + '-'
				+ multipartFile.getOriginalFilename().trim();
		String realPathToUploads = servletContext.getRealPath("/uploads/");

		if (!new File(realPathToUploads).exists()) {
			new File(realPathToUploads).mkdir();
		}

		String filePath = realPathToUploads + fileName;
		File dest = new File(filePath);

		try {
			multipartFile.transferTo(dest);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}

		return fileName;
	}
}
