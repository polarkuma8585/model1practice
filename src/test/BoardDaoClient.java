package test;

import co.yedam.app.board.BoardDao;
import co.yedam.app.board.BoardDto;

public class BoardDaoClient {
	public static void main(String[] args) {
		BoardDao dao = new BoardDao();
		BoardDto dto = new BoardDto();
		dto.setPoster("test");
		dto.setSubject("dao test");
		dto.setContents("dto test");
		dao.insert(dto);
	}
}
