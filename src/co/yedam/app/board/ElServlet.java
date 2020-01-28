package co.yedam.app.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ElServlet")
public class ElServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ElServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("name", "request-hong");
		//session
		HttpSession session = request.getSession();
		session.setAttribute("name", "session-hong");
		//application
		this.getServletContext().setAttribute("name", "application-hong");
		//list
		List<BoardDto> list = new ArrayList<>();
		list.add(new BoardDto(1,"hmm","first"));
		list.add(new BoardDto(2,"hmmm","second"));
		request.setAttribute("boardList", list);
		//map
		Map<String, Object> map = new HashMap<>();
		map.put("name","sunsin lee");
		map.put("age",25);
		map.put("dept","dev");
		request.setAttribute("userInfo", map);
		//dto
		request.setAttribute("board", new BoardDto(3,"hey","third"));
		
		request.getRequestDispatcher("jsp/elTest.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
