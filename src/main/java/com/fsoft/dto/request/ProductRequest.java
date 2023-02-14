package com.fsoft.dto.request;

import org.springframework.web.multipart.MultipartFile;

public class ProductRequest {
	private String name;

	private Long categoryId;

	private int size;

	private int price;

	private int quantity;

	private int discount;

	private MultipartFile image;

	private String description;

	@Override
	public String toString() {
		return "ProductRequest [name=" + name + ", categoryId=" + categoryId + ", size=" + size + ", price=" + price
				+ ", quantity=" + quantity + ", discount=" + discount + ", description=" + description + "]";
	}

	public ProductRequest(String name, Long categoryId, int size, int price, int quantity, int discount,
			MultipartFile image, String description) {
		super();
		this.name = name;
		this.categoryId = categoryId;
		this.size = size;
		this.price = price;
		this.quantity = quantity;
		this.discount = discount;
		this.image = image;
		this.description = description;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public ProductRequest() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
