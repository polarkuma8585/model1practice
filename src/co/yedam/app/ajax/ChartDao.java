package co.yedam.app.ajax;





import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import co.yedam.app.board.DAO;

public class ChartDao extends DAO {
	public List<Map<String,Object>> getDeptCnt(){ //Map을 통해 서버에서 데이터 가져오기
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try {
			String sql = "select d.department_name, count(employee_id) cnt" + 
					"  from employees e, departments d" + 
					"  where e.department_id = d.department_id" + 
					"  group by department_name\r\n"; 
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				Map<String, Object> map = new HashMap<String, Object>();
//				map.put("department_name", rs.getString("department_name"));
				map.put("name", rs.getString("department_name"));
				map.put("data", rs.getInt("cnt"));
				list.add(map);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	}


