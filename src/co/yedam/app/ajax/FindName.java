package co.yedam.app.ajax;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FindName.do")
public class FindName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FindName() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		//파라미터 받기
		String no = request.getParameter("no");
		//이름 찾기
		String name = "";
		//1: 홍길동 2: 김기자
		if(no.equals("1")) { //Integer.ParseInt(1) == 1
			name = "홍길동";
		}else if(no.equals("2")){
			name = "김기자";
		}
		//이름 출력
		response.getWriter().append(name);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
