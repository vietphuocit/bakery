package com.fsoft.service;

import java.util.List;

import com.fsoft.entity.Category;

public interface CategoryService {
	public List<Category> findAllOrderASCById();

	public boolean createCategory(Category category);

	public boolean updateCategoryById(Long id, String name);

	public boolean deleteCategoryById(Long id);
}
