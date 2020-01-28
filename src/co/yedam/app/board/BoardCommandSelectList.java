package co.yedam.app.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;

public class BoardCommandSelectList implements Command{	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardDao dao = new BoardDao();
		List<BoardDto> list = dao.selectList();
		request.setAttribute("list", list);
		return "board/list.jsp";
		
	}
	
}
