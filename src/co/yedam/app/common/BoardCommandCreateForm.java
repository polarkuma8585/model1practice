package co.yedam.app.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardCommandCreateForm implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//처리
		
		//포워드 페이지 리턴
		return "board/insert_form.jsp";
	}

}
