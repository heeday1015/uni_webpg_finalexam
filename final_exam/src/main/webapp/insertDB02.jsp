<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
	String bookName = request.getParameter("bookName");
	String autherName = request.getParameter("autherName");
	
	String sql = "INSERT INTO book (bookName, autherName) VALUES";
	sql += "('" + bookName + "','" + autherName + "')";

	Statement sm = conn.createStatement();
	
	int count = sm.executeUpdate(sql);
	if(count == 1){
		response.sendRedirect("borrowBookSuccess.jsp");
	}else{
		out.println("도서대출 실패!");
		response.sendRedirect("borrowBook.jsp");
	}
	sm.close();
	conn.close();	
%>