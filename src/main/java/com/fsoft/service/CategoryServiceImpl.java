package com.fsoft.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fsoft.entity.Category;
import com.fsoft.repository.CategoryRepository;
import com.fsoft.repository.ProductRepository;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<Category> findAllOrderASCById() {
		return categoryRepository.findAllByOrderByIdAsc();
	}

	@Override
	public boolean createCategory(Category category) {
		List<Category> categories = categoryRepository.findAll();
		for (Category item : categories) {
			if (item.getName().trim().toLowerCase().equals(category.getName().trim().toLowerCase())) {
				return false;
			}
		}
		categoryRepository.save(category);
		return true;
	}

	@Override
	public boolean updateCategoryById(Long id, String name) {
		if (categoryRepository.findOne(id) == null)
			return false;

		if (categoryRepository.findByName(name) != null)
			return false;

		Category category = categoryRepository.findOne(id);
		category.setName(name);
		categoryRepository.save(category);
		return true;
	}

	@Override
	public boolean deleteCategoryById(Long id) {
		if (categoryRepository.findOne(id) == null)
			return false;

		if (!productRepository.findByDeletedFalseAndCategory_id(id).isEmpty())
			return false;

		categoryRepository.delete(id);
		return true;
	}

}
