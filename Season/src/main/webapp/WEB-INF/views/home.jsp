<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>- 계절밥상 관리자 페이지 -</title>
<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btnLogin").click(function() {
			var user_id = $("#user_id").val();
			var user_pw = $("#user_pw").val();
			if (user_id.length == 0) {
				alert("아이디를 입력하세요.");
				$("#user_id").focus();
				return;
			}
			if (user_pw.length == 0) {
				alert("비밀번호를 입력하세요.");
				$("#user_pw").focus();
				return;
			}
			document.form1.action = "${path}/season/login"
			document.form1.submit();
		});
	});
</script>
</head>
<body>
	<div class="login-page">
		<div class="form">
			<form class="login-form" name="form1" method="post" action="login">
				<input type="text" placeholder="지점번호" id="user_id" name="user_id" />
				<input type="password" placeholder="비밀번호" id="user_pw" name="user_pw" />
				<button>로그인</button>
				<p class="message">
					Not registered? <a href="#">Create an account</a>
				</p>
			</form>
		</div>
	</div>

</body>
</html>