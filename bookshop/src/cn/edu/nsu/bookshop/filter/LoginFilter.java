package cn.edu.nsu.bookshop.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import cn.edu.nsu.bookshop.db.last.users.Users;

/*
 * 
 *
 * 对后台请求登录验证*
 * */

public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		//从session中取出登录用户信息
		((HttpServletRequest)request).getSession().setAttribute("USER_LOGIN", new Users()	);
		Object user = ((HttpServletRequest)request).getSession().getAttribute("USER_LOGIN");
		
		
		//如果存在：合法。放行
		if(user !=null) {
		//不存在：不合法。导向登陆表单页面
		chain.doFilter(request, response);
		}
		else {
			request.getRequestDispatcher("/pages/admin/index.html").forward(request, response);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
