package day12.korea;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//jsp 모든페이지에 필터 건다
@WebFilter("/*")
public class EncodingFilter implements Filter{
	
	private String charset = "utf-8";
	
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		//charset 적용시키고
		request.setCharacterEncoding(charset);
		//그걸 전체에 적용시켜
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
