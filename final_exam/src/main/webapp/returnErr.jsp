<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 도서 반납확인 바람 </title>
</head>
<body>
	도서반납 확인
	<hr>
	도서 반납 실패 <br>
	도서명을 정확히 입력해주세요<br>

	<form action="returnBook.jsp" name="r_form" method="post" >
		<p>
		<input type="submit" value=" 도서 반납 다시하기" >
	</form> 	
</body>
</html>