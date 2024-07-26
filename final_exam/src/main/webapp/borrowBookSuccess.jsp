<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <p align="center">회원님의 도서 대출 현황</p>
    <hr>
    <% 
		String bookName = request.getParameter("bookName");
		String autherName = request.getParameter("autherName");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT bookName, autherName, signuptime FROM book");
		
		String str = "";
		int count = 1;
		
		while(rs.next()){
			str += count + " : " + "도서명 : " + rs.getString("bookName") + " 작가명 :  " + rs.getString("autherName")
				+ " 대출시작시간 : " + rs.getString("signuptime") + "<br>";
			count++;
		}
		out.print(str);
		
		rs.close();
		sm.close();
		conn.close();	
	%>
	<hr>
	<table border="0">
		<tr>
			<td>
				<form action="returnBook.jsp" method="post" >
					<input type="submit" value=" 도서 반납하기 " >
				</form>
			</td>	 
			<td>
				<form action="membership.jsp" method="post" >
					<input type="submit" value="회원 전용 공간으로 돌아가기" >
				</form>
			</td>
		</tr>
	</table>
    
</body>
</html>