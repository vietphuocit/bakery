package com.fsoft.entity;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Embeddable
public class PrimaryKeyProduct implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@GeneratedValue(strategy = GenerationType.IDENTITY)
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
	public int hashCode() {
		return Objects.hash(id, size);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PrimaryKeyProduct other = (PrimaryKeyProduct) obj;
		return Objects.equals(id, other.id) && size == other.size;
	}

}
