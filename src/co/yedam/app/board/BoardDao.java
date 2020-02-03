package co.yedam.app.board;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDao extends DAO {
	
	//추가
	public int insert(BoardDto dto) {
		int n = 0;
		try {
			String sql = "insert into board(no,poster,subject,contents,lastpost,views) "
					+ "values((select max(no)+1 from board),?,?,?,sysdate,1)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPoster());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getContents());
			n = pstmt.executeUpdate();
		}catch(Exception e){
			e.getStackTrace();
		}finally {
			close();
		}
		return n;
	}
	//수정
	public int update(BoardDto dto) {
		int n = 0;
		try {
			String sql = "update board set subject=?, contents=? where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getContents());
			pstmt.setInt(3, dto.getNo());
			n = pstmt.executeUpdate();
		}catch(Exception e){
			e.getStackTrace();
		}finally {
			close();
		}
		return n;
	}
	//삭제
	public int delete(BoardDto dto) {
		int n = 0;
		try {
			String sql = "delete board where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getNo());
			n = pstmt.executeUpdate();
		}catch(Exception e){
			e.getStackTrace();
		}finally {
			close();
		}
		return n;
	}
	//단건조회
	public BoardDto selectOne(int no) {
		BoardDto dto = new BoardDto();
		try {
			String sql = "select * from board where no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			dto.setNo(rs.getInt("no"));
			dto.setPoster(rs.getString("poster"));
			dto.setSubject(rs.getString("subject"));
			dto.setContents(rs.getString("contents"));
//			dto.setLastpost(rs.getDate("lastpost"));
			dto.setViews(rs.getInt("views"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
	}
	//목록조회
	public List<BoardDto> selectList(){
		List<BoardDto> list = new ArrayList<BoardDto>();
		//1. DB연결
		
		
		try {
			//2. 쿼리 실행
			String sql = "select * from board order by no desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			//3. 결과 저장
			while(rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setNo(rs.getInt("no"));
				dto.setPoster(rs.getString("poster"));
				dto.setSubject(rs.getString("subject"));
				dto.setContents(rs.getString("contents"));
//				dto.setLastpost(rs.getDate("lastpost"));
				dto.setViews(rs.getInt("views"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//4. 연결해제
			close();
		}
		return list;
		
	}
}
