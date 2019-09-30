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
			var user_id = $("#identify").val();
			var user_pw = $("#password").val();
			if (user_id.length == 0) {
				alert("아이디를 입력하세요.");
				$("#identify").focus();
				return;
			}
			if (user_pw.length == 0) {
				alert("비밀번호를 입력하세요.");
				$("#password").focus();
				return;
			}
			document.form1.action = "${path}/loginCheck"
			document.form1.submit();
		});
	});
</script>
</head>
<body>
	<div class="login-page">
		<div class="form">
			<form class="login-form" name="form1" method="post"
				action="loginCheck">
				<input type="text" placeholder="아이디" id="identify" name="identify" /> <input
					type="password" placeholder="비밀번호" id="password" name="password" />
				<button type="button" id="btnLogin">로그인</button>
				<c:if test="${msg == 'failuer'}">
					<script>alert('비밀번호가 틀렸습니다.');</script>
				</c:if>
				<c:if test="${msg == 'logout'}">
					<script>alert('로그아웃 되었습니다.');</script>
				</c:if>
			</form>
		</div>
	</div>

</body>
</html>