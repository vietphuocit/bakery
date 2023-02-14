package com.fsoft.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "product")
public class Product {

	@EmbeddedId
	private PrimaryKeyProduct primaryKeyProduct;

	@Column(columnDefinition = "nvarchar(255)")
	private String name;

	@Column(columnDefinition = "nvarchar(255)")
	private int description;

	private int price;

	private int quantity;

	private int discount;

	@Column(name = "img_src")
	private String imageSource;

	@Column(name = "created_at")
	@CreationTimestamp
	private Date createdAt;

	@Column(name = "modified_at")
	@UpdateTimestamp
	private Date modifiedAt;

	private boolean deleted;

	@ManyToOne
	@JoinColumn(name = "category_id")
	private Category category;

	public Product() {
	}

	public Product(PrimaryKeyProduct primaryKeyProduct, String name, int description, int price, int quantity,
			int discount, String imageSource, Category category) {
		super();
		this.primaryKeyProduct = primaryKeyProduct;
		this.name = name;
		this.description = description;
		this.price = price;
		this.quantity = quantity;
		this.discount = discount;
		this.imageSource = imageSource;
		this.category = category;
	}

	public PrimaryKeyProduct getPrimaryKeyProduct() {
		return primaryKeyProduct;
	}

	public void setPrimaryKeyProduct(PrimaryKeyProduct primaryKeyProduct) {
		this.primaryKeyProduct = primaryKeyProduct;
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

	public String getImageSource() {
		return imageSource;
	}

	public void setImageSource(String imageSource) {
		this.imageSource = imageSource;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDescription() {
		return description;
	}

	public void setDescription(int description) {
		this.description = description;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getModifiedAt() {
		return modifiedAt;
	}

	public void setModifiedAt(Date modifiedAt) {
		this.modifiedAt = modifiedAt;
	}

	public boolean isDeleted() {
		return deleted;
	}

	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}

}
