<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>loginResult.jsp</title>
</head>
<body>

<%
        String expectedUsername = "여기에 사용자 이름"; // 실제 사용자 이름으로 바꿉니다.
        String expectedPassword = "여기에 비밀번호"; // 실제 비밀번호로 바꿉니다.

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals(expectedUsername) && password.equals(expectedPassword)) {
            // 인증 성공 시, 보호된 페이지로 리디렉션
            response.sendRedirect("main?.jsp");
        } else {
            // 인증 실패 시 오류 메시지 표시
            out.println("유효하지 않은 사용자 이름 또는 비밀번호입니다. 다시 시도하세요.");
        }
    %>

</body>
</html>