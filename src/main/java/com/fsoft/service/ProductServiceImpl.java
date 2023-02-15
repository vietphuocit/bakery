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
import com.fsoft.entity.Category;
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
		return productRepository.findAllSortByCity();
	}

	@Override
	public boolean createProduct(ProductRequest productRequest) {
		Long id = productRepository.findIdByName(productRequest.getName());

		if (id != null)
			System.out.println(id);

		PrimaryKeyProduct pkProduct = (id == null)
				? new PrimaryKeyProduct(getGeneratedIdProduct(), productRequest.getSize())
				: new PrimaryKeyProduct(id, productRequest.getSize());

		Category category = categoryRepository.findOne(productRequest.getCategoryId());
		if (category == null)
			return false;

		try {
			String fileName = saveImage(productRequest.getImage());
			productRepository.save(new Product(pkProduct, productRequest.getName(), productRequest.getDescription(),
					productRequest.getPrice(), productRequest.getQuantity(), productRequest.getDiscount(), fileName,
					category));
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	public Long getGeneratedIdProduct() {
		List<GeneratedIdProduct> ids = generatedIdProductRepository.findAll();
		if (ids.isEmpty()) {
			generatedIdProductRepository.save(new GeneratedIdProduct());
			return (long) 0;
		} else {
			generatedIdProductRepository.updateCount();
			return ids.get(0).getCount();
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
