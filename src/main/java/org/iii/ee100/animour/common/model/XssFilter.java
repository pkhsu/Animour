package org.iii.ee100.animour.common.model;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;

//@Component
@WebFilter(filterName = "xssFilter", urlPatterns = "/*", asyncSupported = true)
public class XssFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		XssHttpServletRequestWrapper xssRequest =
		        new XssHttpServletRequestWrapper((SecurityContextHolderAwareRequestWrapper) request);
		    chain.doFilter(xssRequest, response);
		    return;
	}

	@Override
	public void destroy() {
	}

}
