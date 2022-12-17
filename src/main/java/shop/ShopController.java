package shop;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.shop")
public class ShopController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShopInterface command = null;
		String viewPage = "/WEB-INF/shop";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		
		if(com.equals("/shopMain")) {
			command = new ShopmainCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		/*
		 * else if(com.equals("/memLoginOk")) { command = new MemLoginOkCommand();
		 * command.execute(request, response); viewPage = "/include/message.jsp"; }
		 */
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
