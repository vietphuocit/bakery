package com.fsoft.entity;

import java.io.Serializable;
import javax.persistence.Embeddable;

@Embeddable
public class PrimaryKeyProduct implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;

	private int size;

	public PrimaryKeyProduct() {
		super();
	}

	public PrimaryKeyProduct(int size) {
		super();
		this.size = size;
	}

	public PrimaryKeyProduct(Long id, int size) {
		super();
		this.id = id;
		this.size = size;
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

	@Override
	public String toString() {
		return "PrimaryKeyProduct [id=" + id + ", size=" + size + "]";
	}

}