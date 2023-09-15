<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
    <title>로그인 결과</title>
</head>
<body>
    <% 
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    // 여기에서 사용자 인증 로직을 구현합니다.
    // 데이터베이스 등에서 사용자 정보를 확인할 수 있습니다.
    
    if ("올바른_사용자_이름".equals(username) && "올바른_비밀번호".equals(password)) {
        session.setAttribute("username", username);
        response.sendRedirect("loginSuccess.jsp");
    } else {
        response.sendRedirect("loginFailure.jsp");
    }
    %>
</body>
</html>
