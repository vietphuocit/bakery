package com.fsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.fsoft.dto.request.ProductRequest;
import com.fsoft.service.CategoryService;
import com.fsoft.service.ProductService;
import com.fsoft.utils.ControllerUtils;

@Controller
public class ProductController {

	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	@RequestMapping(value = { "admin/product" }, method = RequestMethod.GET)
	public String productPage(Model model) {

		model.addAttribute("products", productService.findAllOrderASCById());
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "admin/product";
	}

	@RequestMapping(value = { "admin/product" }, method = RequestMethod.POST)
	public String createProduct(Model model, @ModelAttribute ProductRequest productRequest) {

		if (productService.createProduct(productRequest)) {
			ControllerUtils.addAttributeNotification(model, "Sản phẩm", "Thêm sản phẩm thành công.", false);
		} else {
			ControllerUtils.addAttributeNotification(model, "Sản phẩm", "Có lỗi khi thêm sản phẩm.", true);
		}

		model.addAttribute("products", productService.findAllOrderASCById());
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "admin/product";
	}

	@RequestMapping(value = { "admin/product/{id}/{size}" }, method = RequestMethod.GET)
	public String deleteProduct(Model model, @PathVariable(value = "id") Long id,
			@PathVariable(value = "size") int size) {

		if (productService.deleteProduct(id, size)) {
			ControllerUtils.addAttributeNotification(model, "Sản phẩm", "Xóa sản phẩm thành công.", false);
		} else {
			ControllerUtils.addAttributeNotification(model, "Sản phẩm", "Có lỗi khi xóa sản phẩm.", true);
		}

		model.addAttribute("products", productService.findAllOrderASCById());
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "admin/product";
	}

	@RequestMapping(value = { "admin/product/{id}" }, method = RequestMethod.POST)
	public String updateProduct(Model model, @PathVariable(value = "id") Long id,
			@ModelAttribute ProductRequest productRequest) {

		if (productService.updateProduct(id, productRequest)) {
			ControllerUtils.addAttributeNotification(model, "Sản phẩm", "Cập nhật sản phẩm thành công.", false);
		} else {
			ControllerUtils.addAttributeNotification(model, "Sản phẩm", "Có lỗi khi cập nhật sản phẩm.", true);
		}

		model.addAttribute("products", productService.findAllOrderASCById());
		model.addAttribute("categories", categoryService.findAllOrderASCById());
		return "admin/product";
	}

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String pageProduct(Model model) {

		model.addAttribute("products", productService.findAllOrderASCById());
		model.addAttribute("categories", categoryService.findAllOrderASCById());

		return "web/product";
	}

	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String pageProductDetail(Model model, @PathVariable("id") Long id) {

		model.addAttribute("product", productService.findByPrimaryKeyProductId(id));

		return "web/productDetails";
	}

	@RequestMapping(value = "/product/search", method = RequestMethod.POST)
	public String findByKeyword(Model model, @ModelAttribute("keyword") String keyword) {

		System.out.println(keyword);

		return "web/search";
	}
}
