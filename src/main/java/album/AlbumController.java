package album;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemJoinOkCommand;

@SuppressWarnings("serial")
@WebServlet("*.alb")
public class AlbumController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AlbumInterface command = null;
		String viewPage = "/WEB-INF/album";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		
		if(com.equals("/albumMain")) {
			command = new AlbumMainCommand();
			command.execute(request, response);
			viewPage += "/albumMain.jsp";
		}
		else if(com.equals("/noAlbumMain")) {
			command = new NoAlbumMainCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		 
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
