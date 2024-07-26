<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 전용 공간 </title>
</head>
<body>
	<%
		String u_id = request.getParameter("uID");
		String u_pw = request.getParameter("uPW");
		
		if(u_id == u_id && u_pw == u_pw)
		{
			session.setAttribute("memberId", u_id);
			session.setAttribute("memberPw", u_pw);
			
			out.println("회원 [ " + u_id + " ]님이 입장하였습니다. <p>");
		}
		else
		{
			response.sendRedirect("loginErr.jsp");
		}
	%>
	회원 전용 공간
	<hr>
	반갑습니다.<br>
	여기는 회원 전용 공간입니다.<br>
	도서 대출과 회원 탈퇴를 하실 수 있습니다.<br><br>

	<table border="0">
		<tr>
			<td>
				<form action="borrowBook.jsp" method="post" >
					<input type="submit" value=" 도서 대출 " >
				</form>
			</td>
			<td>	
				<form action="borrowBookSuccess.jsp" method="post" >
					<input type="submit" value=" 대출 현황" >
				</form>
			</td>
		</tr>	
	</table>
	<hr>
	<table border="0">
		<tr>
			<td>
				<form action="main.jsp" method="post" >
					<input type="submit" value=" ◀ 메인 화면 " >
				</form>
			</td>
			<td>	
				<form action="withdraw.jsp" method="post" >
					<input type="submit" value=" 회원 탈퇴하기 ▶" >
				</form>
			</td>
		</tr>	
	</table>	 	
</body>
</html>