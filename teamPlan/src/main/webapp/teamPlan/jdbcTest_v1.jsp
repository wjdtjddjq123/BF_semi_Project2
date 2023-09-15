<%@ page import="javax.swing.text.AbstractDocument.Content" %>
<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" %>

<%
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521:XE";
	String sql = "";
	String contents = "";
	
	if (conn == null) {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "scott", "tiger");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	if (request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
		sql = "insert into user (id, passWd, userName, birth, gitEmail) values(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("id"));
			pstmt.setString(2, request.getParameter("passWd"));
			pstmt.setString(3, request.getParameter("userName"));
			pstmt.setString(4, request.getParameter("birth"));
			pstmt.setString(5, request.getParameter("gitEmail"));
			
			pstmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		finally {
			if (stmt != null) {
				try {
					stmt.close();
				}
				catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	sql = "select id, passWd, userName, birth, gitEmail from user";
	
	try {
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			contents += "<li>아이디: " + rs.getString("id") + " | 패스워드: " + rs.getString("passWd") + 
					" | userName: " + rs.getString("userName") +
					" | birthday: " + rs.getString("birthday") +
					" | gitEmail: " + rs.getString("gitEmail") +
					"</li>";
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}	
	finally {
		if (stmt != null) {
			try {
				stmt.close();
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 및 조회</title>
</head>
<body>
	<h2>회원 등록 및 조회</h2>
	<hr>
	<form method="post">
		<fieldset>
			<legend>회원 등록</legend>
			<label for="username">이름</label>
			<input type="text" name="username" required id="username">
			
			<label for="email">이메일</label>
			<input type="email" name="email" required id="email">
			
			<input type="submit" value="등록">
		</fieldset>	
	</form>
	<hr>
	<h3>전체 회원 목록</h3>
	<ol><%= contents %></ol>
</body>
</html>
