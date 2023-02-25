package com.fsoft.utils;

import org.springframework.ui.Model;

public class ControllerUtils {
	public static void addAttributeToast(Model model, String title, String message, String type) {
		model.addAttribute("title", title);
		model.addAttribute("message", message);
		model.addAttribute("type", type);
	}
}
