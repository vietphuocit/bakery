package com.fsoft.security;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class MySuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		String targetUrl = authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_ADMIN")) ? "/admin"
				: "/";

		if (response.isCommitted()) {
			return;
		}
		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	@Override
	public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
		this.redirectStrategy = redirectStrategy;
	}

	@Override
	public RedirectStrategy getRedirectStrategy() {
		return redirectStrategy;
	}
}
