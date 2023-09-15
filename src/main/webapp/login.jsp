<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>login.jsp</title>
	<link rel="stylesheet" href="./css/loginStyle.css" />
</head>
<body>

<div id="login-container">
	<div class="logo-box">
		<img id="logo" src="images/logo.ico" alt="Logo" class="logo">
	</div>
    <form action="loginProcess.jsp" method="post">
        <label for="username">사용자 이름:</label>
        <input type="text" id="username" name="username" required><br>
        
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password" required><br>
        
        <input type="submit" value="로그인">
    </form>
    <button id="signup-button" class="signup-btn">회원가입</button>
    </div>
    
    <p>계정이 없으신가요? <a href="register.jsp">회원가입</a></p>
</body>
</html>