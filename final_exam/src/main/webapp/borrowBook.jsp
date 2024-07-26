<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">	
    function checkFun() 
    {
        var f = document.loginForm;
        if(f.bookName.value == "")
        {
            alert("도서명을 입력해 주세요.");
            f.uID.focus();
            return false;
        }
        else if(f.autherName.value == "")
        {
            alert("작가명 입력해 주세요.");
            f.uPW.focus();
            return false;
        }
        else return true;
    }		
</script>
</head>
<body>
	도서 대출
	<hr>
    <form action="insertDB02.jsp" name="book_info" 
		method="post" onsubmit="return checkFun()">
		<fieldset style="width:230px">
			<legend> 도서 대출 화면 </legend><p>
	
			도서명 : <br>
			<input type="text" size = "30" name="bookName"><br><br>
		
			작가명 : <br> 
			<input type="text" size = "30" name="autherName"><br><br>
					
			<hr>
			<input type="reset" value=" ◀ 다시작성 ">
			<input type="submit" value=" 대출하기 ▶ ">
			<br><br>
		</fieldset>
	</form>
</body>
</html>