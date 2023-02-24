package com.fsoft.dto.request;

public class DetailRequest {
	private Long id;
	private int size;
	private int quantity;

	public DetailRequest(Long id, int size, int quantity) {
		super();
		this.id = id;
		this.size = size;
		this.quantity = quantity;
	}

	public DetailRequest() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "OrderRequest [id=" + id + ", size=" + size + ", quantity=" + quantity + "]";
	}

}
