package com.fsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.entity.Category;
import com.fsoft.repository.CategoryRepository;

@Controller
public class CategoryController {
	@Autowired
	private CategoryRepository categoryRepository;

	@RequestMapping(value = { "admin/category" }, method = RequestMethod.GET)
	public String categoryManagerPage(Model model) {
		model.addAttribute("categories", categoryRepository.findAll(new Sort(new Order(Direction.ASC, "id"))));

		return "admin/category";
	}

	@RequestMapping(value = { "admin/category" }, method = RequestMethod.POST)
	public String createCategory(Model model, @ModelAttribute Category category) {
		try {
			categoryRepository.save(category);
			model.addAttribute("error", "bg-success");
			model.addAttribute("message", "Thêm danh mục thành công.");
		} catch (Exception e) {
			model.addAttribute("error", "bg-danger");
			model.addAttribute("message", "Danh mục đã tồn tại.");
		}
		model.addAttribute("title", "Danh mục");
		model.addAttribute("categories", categoryRepository.findAll(new Sort(new Order(Direction.ASC, "id"))));
		return "admin/category";
	}

	@RequestMapping(value = { "admin/category/{id}" }, method = RequestMethod.POST)
	public String updateCategory(Model model, @ModelAttribute Category category, @PathVariable(value = "id") Long id) {
		try {
			categoryRepository.updateNameById(id, category.getName());
			model.addAttribute("error", "bg-success");
			model.addAttribute("message", "Sửa danh mục thành công.");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("error", "bg-danger");
			model.addAttribute("message", "Lỗi khi cập nhật danh mục.");
		}
		model.addAttribute("title", "Danh mục");
		model.addAttribute("categories", categoryRepository.findAll(new Sort(new Order(Direction.ASC, "id"))));
		return "admin/category";
	}

	@RequestMapping(value = { "admin/category/{id}" }, method = RequestMethod.GET)
	public String deleteCategory(Model model, @PathVariable(value = "id") Long id) {
		try {
			categoryRepository.delete(id);
			model.addAttribute("error", "bg-success");
			model.addAttribute("message", "Xóa danh mục thành công.");
		} catch (Exception e) {
			model.addAttribute("error", "bg-danger");
			model.addAttribute("message", "Lỗi khi xóa danh mục.");
		}
		model.addAttribute("title", "Danh mục");
		model.addAttribute("categories", categoryRepository.findAll(new Sort(new Order(Direction.ASC, "id"))));
		return "admin/category";
	}
}
