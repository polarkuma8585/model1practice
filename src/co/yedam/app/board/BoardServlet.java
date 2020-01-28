package co.yedam.app.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardServlet() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.요청 파라미터 받기
		
		//2.요청 처리 (조회)
		BoardDao dao = new BoardDao();
		List<BoardDto> list = dao.selectList();
		
		//3.결과저장
		request.setAttribute("list", list);
		//4.view페이지로 포워드
		request.getRequestDispatcher("/board/list.jsp").forward(request, response);
	}

}
