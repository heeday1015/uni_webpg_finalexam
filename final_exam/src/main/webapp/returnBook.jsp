<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 반납하기</title>
</head>
<body>
	도서 반납하기
	<hr>
	<form action="returnCheck.jsp" name="user_info" method="post">
		<fieldset style="width:200px">
			<legend> 도서 반납 </legend><p>
	
			책이름 : <br>
			<input type="text" name="bookName"><br>
			
		<div align="center">
			<input type="submit" value=" 반납하기 "> &nbsp;&nbsp;
		</div><br>
		</fieldset>
	</form>
</body>
</html>