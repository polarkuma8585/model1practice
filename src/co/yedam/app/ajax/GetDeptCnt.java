package co.yedam.app.ajax;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;
import net.sf.json.JSONArray;

public class GetDeptCnt implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//ChartDao
		ChartDao dao = new ChartDao();
		List<Map<String,Object>> list = dao.getDeptCnt();
 
		//JSON String 변화
		String chart = JSONArray.fromObject(list).toString();
		System.out.println(chart);
		return "ajax:"+ chart;
		
	}

}
