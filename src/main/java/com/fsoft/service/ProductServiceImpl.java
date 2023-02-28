package com.fsoft.service;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fsoft.dto.request.ProductRequest;
import com.fsoft.dto.response.ProductDetailResponse;
import com.fsoft.dto.response.ProductResponse;
import com.fsoft.entity.Category;
import com.fsoft.entity.GeneratedIdProduct;
import com.fsoft.entity.Order;
import com.fsoft.entity.PrimaryKeyProduct;
import com.fsoft.entity.Product;
import com.fsoft.repository.CategoryRepository;
import com.fsoft.repository.GeneratedIdProductRepository;
import com.fsoft.repository.OrderDetailsRepository;
import com.fsoft.repository.OrderRepository;
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
	OrderRepository orderRepository;

	@Autowired
	OrderDetailsRepository orderDetailsRepository;

	@Autowired
	GeneratedIdProductRepository generatedIdProductRepository;

	@Override
	public List<Product> findAllOrderASCById() {
		return productRepository.findAllByGroupByName();
	}

	@Override
	public boolean createProduct(ProductRequest productRequest) {
		Category category = categoryRepository.findOne(productRequest.getCategoryId());
		if (category == null)
			return false;

		Long id = (long) -1;
		List<Product> products = productRepository.findAll();

		for (Product product : products) {
			if (product.getName().toLowerCase().equals(productRequest.getName().toLowerCase())) {
				id = product.getPrimaryKeyProduct().getId();
				break;
			}
		}

		id = id == -1 ? getGeneratedIdProduct() : id;

		try {
			String fileName = saveImage(productRequest.getImage());

			productRepository.save(new Product(new PrimaryKeyProduct(id, productRequest.getSize()),
					productRequest.getName().toLowerCase(), productRequest.getDescription(), productRequest.getPrice(),
					productRequest.getQuantity(), productRequest.getDiscount(), fileName, category));

			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	@Override
	public boolean updateProduct(Long id, ProductRequest productRequest) {
		Product product = productRepository
				.findByPrimaryKeyProduct(new PrimaryKeyProduct(id, productRequest.getSize()));

		Category category = categoryRepository.findOne(productRequest.getCategoryId());

		if (product == null || category == null)
			return false;

		String fileName = saveImage(productRequest.getImage());
		product.setImage(fileName);
		product.setCategory(category);
		product.setPrice(productRequest.getPrice());
		product.setQuantity(productRequest.getQuantity());
		product.setDiscount(productRequest.getDiscount());

		product.setDescription(productRequest.getDescription());
		try {
			productRepository.save(product);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
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

	@Override
	public List<Product> findByCategory(Long id) {
		return productRepository.findByCategory_id(id);
	}

	@Override
	public ProductResponse findByPrimaryKeyProductId(Long id) {
		List<Product> products = productRepository.findByPrimaryKeyProduct_id(id);
		List<ProductDetailResponse> productDetails = new ArrayList<>();

		for (Product product : products) {
			productDetails.add(new ProductDetailResponse(product.getPrimaryKeyProduct().getSize(),
					product.getDiscount(), product.getPrice(), product.getQuantity()));
		}

		return new ProductResponse(products.get(0).getPrimaryKeyProduct().getId(), products.get(0).getName(),
				products.get(0).getDescription(), products.get(0).getCategory(), products.get(0).getImage(),
				productDetails);
	}

	@Override
	public boolean isFavourite(Long id, String username) {
		Order order = orderRepository.findByOrderStatus_nameAndCustomer_username("yêu thích", username);
		Product product = productRepository.findByPrimaryKeyProduct_id(id).get(0);
		return order != null && orderDetailsRepository.findByOrderAndProduct(order, product) != null;
	}

	public Long getGeneratedIdProduct() {
		List<GeneratedIdProduct> ids = generatedIdProductRepository.findAll();
		if (ids != null && !ids.isEmpty()) {
			generatedIdProductRepository.updateCount();
			return ids.get(0).getCount();
		} else {
			generatedIdProductRepository.save(new GeneratedIdProduct((long) 0));
			return getGeneratedIdProduct();
		}
	}

	public String saveImage(MultipartFile multipartFile) {
		String fileName = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy")) + '-'
				+ multipartFile.getOriginalFilename().trim();
		String realPathToUploads = servletContext.getRealPath("/uploads/");

//		C:/Users/Windows 10 YSL 1909/Desktop/GitHub/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/bakery/uploads/

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
