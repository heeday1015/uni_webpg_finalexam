<%@ page import = "java.sql.*" %>    
<%
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3306/finalExam_db";
	String user = "root";
	String passwd = "0000";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, passwd);
%>    