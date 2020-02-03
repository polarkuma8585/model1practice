package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardCommandSelectList;
import co.yedam.app.boardAjax.AjaxBoardList;
import co.yedam.app.boardAjax.AjaxBoardOne;

@WebServlet("*.do") // localhost/model/ ///.do
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

	public NewFrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// cont에 url과 실행 class를 정의 하는 부분
		// 네이밍룰을 정할 것
		// cont.put("/index.do", new IndexCommand()); // 홈페이지 호출
		// board
		// 등록
		// 수정
		// 삭제
		// 상세보기
		// 목록
		cont.put("/boardList.do", new BoardCommandSelectList());
		
		// 수정폼
		cont.put("/boardCreateForm.do", new BoardCommandCreateForm());
		// 등록폼

		// member
		
		//ajax
		cont.put("/ajaxBoardList.do", new AjaxBoardList()); // ajax 일때는 .ac 등 다른 컨트롤러를 타도록 정리 
		cont.put("/ajaxBoardOne.do", new AjaxBoardOne());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청하는 url을 분석하여 실행하는 부분
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		// 로그처리
		System.out.println("path= " + path);
		// 권한체크(로그인 체크)

		Command commandImpl = cont.get(path); // 실행 클래스 선택
		String page = null;
		response.setContentType("text/html; charset=UTF-8"); // 한글 인코딩

		if (commandImpl != null) {
			page = commandImpl.execute(request, response);
			if (page != null && !page.isEmpty()) {
				if (page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				} else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			}
		} else {
			response.getWriter().append("잘못된 요청입니다.");
		}
	}
}
