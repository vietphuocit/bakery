package com.fsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.entity.Category;
import com.fsoft.repository.CategoryRepository;
import com.fsoft.service.CategoryService;
import com.fsoft.utils.ControllerUtils;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = { "admin/category" }, method = RequestMethod.GET)
	public String categoryManagerPage(Model model) {

		model.addAttribute("categories", categoryService.findAllOrderASCById());

		return "admin/category";
	}

	@RequestMapping(value = { "admin/category" }, method = RequestMethod.POST)
	public String createCategory(Model model, @ModelAttribute Category category) {
		if (categoryService.createCategory(category)) {
			ControllerUtils.addAttributeNotification(model, "Danh mục", "Thêm danh mục thành công.", false);
		} else {
			ControllerUtils.addAttributeNotification(model, "Danh mục", "Danh mục đã tồn tại.", true);
		}
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "admin/category";
	}

	@RequestMapping(value = { "admin/category/{id}" }, method = RequestMethod.POST)
	public String updateCategory(Model model, @ModelAttribute Category category, @PathVariable(value = "id") Long id) {
		if (categoryService.updateCategoryById(id, category.getName())) {
			ControllerUtils.addAttributeNotification(model, "Danh mục", "Sửa danh mục thành công.", false);
		} else {
			ControllerUtils.addAttributeNotification(model, "Danh mục", "Lỗi khi cập nhật danh mục.", true);
		}
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "admin/category";
	}

	@RequestMapping(value = { "admin/category/{id}" }, method = RequestMethod.GET)
	public String deleteCategory(Model model, @PathVariable(value = "id") Long id) {
		if (categoryService.deleteCategoryById(id)) {
			ControllerUtils.addAttributeNotification(model, "Danh mục", "Xóa danh mục thành công.", false);
		} else {
			ControllerUtils.addAttributeNotification(model, "Danh mục", "Lỗi khi xóa danh mục.", true);
		}
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "admin/category";
	}
}
