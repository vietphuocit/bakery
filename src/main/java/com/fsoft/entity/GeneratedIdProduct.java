package com.fsoft.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class GeneratedIdProduct {

	@Id
	private Long count;

	public Long getCount() {
		return count;
	}

	public void setCount(Long count) {
		this.count = count;
	}

}
