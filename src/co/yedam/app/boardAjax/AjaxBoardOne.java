package co.yedam.app.boardAjax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDao;
import co.yedam.app.board.BoardDto;
import co.yedam.app.common.Command;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class AjaxBoardOne implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardDao dao = new BoardDao();
		String no = request.getParameter("no");
		BoardDto dto = dao.selectOne(Integer.parseInt(no));
		//미완
		String result = JSONObject.fromObject(dto).toString();
		System.out.println(result);
		return "ajax:" + result;
	
	}

}
