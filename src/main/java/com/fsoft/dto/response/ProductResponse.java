package com.fsoft.dto.response;

import java.util.List;

import com.fsoft.entity.Category;

public class ProductResponse {
	private Long id;
	private String name;
	private String description;
	private Category category;
	private String image;
	private List<ProductDetailResponse> productDetails;

	public ProductResponse() {
		super();
	}

	public ProductResponse(Long id, String name, String description, Category category, String image,
			List<ProductDetailResponse> productDetails) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.category = category;
		this.image = image;
		this.productDetails = productDetails;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the category
	 */
	public Category getCategory() {
		return category;
	}

	/**
	 * @param category the category to set
	 */
	public void setCategory(Category category) {
		this.category = category;
	}

	/**
	 * @return the productDetails
	 */
	public List<ProductDetailResponse> getProductDetails() {
		return productDetails;
	}

	/**
	 * @param productDetails the productDetails to set
	 */
	public void setProductDetails(List<ProductDetailResponse> productDetails) {
		this.productDetails = productDetails;
	}

	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "ProductResponse [name=" + name + ", description=" + description + ", category=" + category + ", image="
				+ image + ", productDetails=" + productDetails + "]";
	}

}
