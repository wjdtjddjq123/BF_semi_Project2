<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
    <title>회원가입 결과</title>
</head>
<body>
    <% 
    String newUsername = request.getParameter("newUsername");
    String newPassword = request.getParameter("newPassword");
    
    // 여기에서 새로운 사용자를 데이터베이스에 추가하거나 다른 저장 방법을 구현합니다.
    
    // 회원가입이 성공하면 로그인 페이지로 리다이렉트
    response.sendRedirect("login.jsp");
    %>
</body>
</html>
