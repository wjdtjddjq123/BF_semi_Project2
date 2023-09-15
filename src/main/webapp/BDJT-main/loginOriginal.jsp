<%@ page language="java" contentType="text/html; charset=UTF-8" %>

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
            <!-- 로고 이미지를 추가합니다. 로고 이미지 파일의 경로를 src 속성에 넣어주세요. -->
            <img id="logo" src="images/logo.ico" alt="Logo" class="logo">
        </div>
        <form id="login-form" class="login-from-class" form="post">
            <label for="username">아이디</label>
            <input type="text" id="username" required>
            <label for="password">비밀번호</label>
            <input type="password" id="password" required>
            <button type="submit" class="login-btn">로그인</button>
        </form>
        <button id="signup-button" class="signup-btn">회원가입</button>
    </div>

    

    <div id="signup-container" style="display: none;">
        <div class="logo-box">
            <!-- 로고 이미지를 추가합니다. 로고 이미지 파일의 경로를 src 속성에 넣어주세요. -->
            <img id="logo" src="images/logo.ico" alt="Logo" class="logo">
        </div>
        <form id="signup-form">
            <label for="new-username">새 아이디</label>
            <input type="text" id="new-username" required>
            <label for="new-password">새 비밀번호</label>
            <input type="password" id="new-password" required>
            <label for="confirm-password">새 비밀번호 확인</label>
            <input type="password" id="confirm-password" required>
            <label for="full-name">성명</label>
            <input type="text" id="full-name" required>
            <label for="dob">생년월일</label>
            <input type="date" id="dob">
            <label for="phone">번호</label>
            <input type="tel" id="phone">
            <div id="password-match-message"></div> <!-- 추가: 비밀번호 일치 여부 메시지 -->
            <button type="submit">회원가입</button>
            <button type="button" id="back-button">뒤로가기</button>
        </form>
    </div>

</body>
</html>