package com.fsoft.controller;

import java.security.Principal;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsoft.entity.Role;
import com.fsoft.entity.User;
import com.fsoft.repository.RoleRepository;
import com.fsoft.repository.UserRepository;

@Controller
public class AuthController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private BCryptPasswordEncoder encoder;

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String registerPage(Model model, Principal principal) {
		return principal == null ? "auth/register" : "redirect:/";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String registerProcess(Model model, @ModelAttribute("user") User user) {
		Role roleUser = roleRepository.findByName("ROLE_USER").get();
		Set<Role> roles = new HashSet<>();
		roles.add(roleUser);

		user.setRoles(roles);
		user.setPassword(encoder.encode(user.getPassword()));

		try {
			userRepository.save(user);
			return "redirect:/register?success";
		} catch (Exception e) {
			return "redirect:/register?failed";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(Model model, Principal principal) {
		return principal == null ? "auth/login" : "redirect:/";
	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login";
	}

	@RequestMapping(value = { "admin" }, method = RequestMethod.GET)
	public String dashboardPage() {

		return "admin/dashboard";
	}
}
