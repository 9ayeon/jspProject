package album;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NoAlbumMainCommand implements AlbumInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("msg", "noAlbumMain");
		request.setAttribute("url", request.getContextPath()+"/index.jsp");
	}

}
