package org.iii.ee100.animour.common.security;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestWrapper;
import org.springframework.web.util.HtmlUtils;
//目前沒有使用
public class XssHttpServletRequestWrapperHtmlUtils extends SecurityContextHolderAwareRequestWrapper {

	public XssHttpServletRequestWrapperHtmlUtils(HttpServletRequest request) {
		super(request, "member");
	}

	@Override
	public String getHeader(String name) {
		String value = super.getHeader(name);
		return HtmlUtils.htmlEscape(value);
	}

	@Override
	public String getParameter(String name) {
		String value = super.getParameter(name);
		return HtmlUtils.htmlEscape(value);
	}

	@Override
	public String[] getParameterValues(String name) {
		String[] values = super.getParameterValues(name);
		if (values != null) {
			int length = values.length;
			String[] escapseValues = new String[length];
			for (int i = 0; i < length; i++) {
				escapseValues[i] = HtmlUtils.htmlEscape(values[i]);
			}
			return escapseValues;
		}
		return super.getParameterValues(name);
	}
}
