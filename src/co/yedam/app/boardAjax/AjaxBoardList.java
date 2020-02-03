package co.yedam.app.boardAjax;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDao;
import co.yedam.app.board.BoardDto;
import co.yedam.app.common.Command;
import net.sf.json.JSONArray;

public class AjaxBoardList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			BoardDao dao = new BoardDao();
			List<BoardDto> list = dao.selectList();
			System.out.println(list);
			//자바 객체 -> JSON string
			String result = JSONArray.fromObject(list).toString();
			System.out.println(result);
			return "ajax:" + result;
	}
}
