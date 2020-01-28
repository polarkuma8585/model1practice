<%@ page import="java.sql.*"  %>
<%
	Connection myConn = null;     //연결
	Statement stmt = null;		//
	ResultSet myResultSet = null; 	//결과 조회용
	String mySQL = "";

	String dbdriver = "oracle.jdbc.OracleDriver";    
	String dburl = "jdbc:oracle:thin:@192.168.120.129:1521:orcl";
	String user = "hr";
	String passwd = "hr";

	try {
			Class.forName(dbdriver);
			myConn =  DriverManager.getConnection (dburl, user, passwd);
			stmt = myConn.createStatement();
			System.err.print("success connect");
	} catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
	}
%>