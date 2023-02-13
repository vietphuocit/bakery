package com.fsoft.utils;

import org.springframework.ui.Model;

public class ControllerUtils {
	public static void addAttributeNotification(Model model, String title, String message, boolean error) {
		model.addAttribute("title", title);
		model.addAttribute("error", error ? "bg-danger" : "bg-success");
		model.addAttribute("message", message);
	}
}
