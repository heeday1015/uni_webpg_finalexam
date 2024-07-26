<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String bookName = request.getParameter("bookName");
	String sql = "DELETE FROM book WHERE bookName = ?";
	
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, bookName);

	int count = sm.executeUpdate();
	
	if(count == 1){
		response.sendRedirect("returnSeccess.jsp");
	}else{
		response.sendRedirect("returnErr.jsp");
	}
	sm.close();
	conn.close();	
%>