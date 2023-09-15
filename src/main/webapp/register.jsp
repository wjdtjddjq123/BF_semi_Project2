<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>register</title>
</head>
<body>
    <form action="registerProcess.jsp" method="post">
        <label for="newUsername">새 사용자 이름:</label>
        <input type="text" id="newUsername" name="newUsername" required><br>
        
        <label for="newPassword">새 비밀번호:</label>
        <input type="password" id="newPassword" name="newPassword" required><br>
        
        <input type="submit" value="회원가입">
    </form>
    
    <p>이미 계정이 있으신가요? <a href="login.jsp">로그인</a></p>
</body>
</html>
