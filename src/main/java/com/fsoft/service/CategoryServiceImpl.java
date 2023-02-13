package com.fsoft.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import com.fsoft.entity.Category;
import com.fsoft.repository.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public List<Category> findAllOrderASCById() {
		Sort sort = new Sort(new Order(Direction.ASC, "id"));
		return categoryRepository.findAll(sort);
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
		if (categoryRepository.findById(id) == null)
			return false;

		categoryRepository.updateNameById(id, name);
		return true;
	}

	@Override
	public boolean deleteCategoryById(Long id) {
		if (categoryRepository.findById(id) == null)
			return false;

		categoryRepository.delete(id);
		return true;
	}

}
