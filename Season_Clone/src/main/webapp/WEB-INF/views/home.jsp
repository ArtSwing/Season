<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
</head>
<title>::: 계절밥상 - Supply Chain Management :::</title>
<script type="text/javascript">
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
			if(user_pw.length > 10){
				alert("비밀번호는 10자리 이하입니다.");
				$("#password").focus();
				return;
			}
			document.form1.action = "${path}/loginCheck"
			document.form1.submit();
		});
	});
</script>
<body>
	<div
		style="width: 1450px; position: absolute; top: 50%; left: 50%; margin: -450px 0 0 -725px;">
		<div id="div_main">
			<div id="main">
				<img src="/resources/images/logo.png"
					style="height: 130px; width: 300px; margin-top: 130px;">
				<p class="mouse_over" style="color: #F6F6F6;" id="inner">
					이곳에 마우스를 올려주세요<br>Please mouse over here.<br>
				</p>
				<div class="login">
					<form class="login-form" name="form1" method="post"
						action="loginCheck">
						<br>
						<p style="color: white; margin: 0 0 0 0;">지점명</p>
						<br> <input type="text" id="identify" name="identify"
							style="font-size: 20px; text-align: center;"><br> <br>
						<p style="color: white; margin: 0 0 0 0;">비밀번호</p>
						<br> <input type="password" id="password" name="password"
							style="font-size: 20px; text-align: center;"><br> <br>
						<input type="button"  value="ENTER" id="btnLogin"><br>
						<c:if test="${msg == 'failuer'}">
							<script>
								alert('비밀번호가 틀렸습니다.');
							</script>
						</c:if>
						<c:if test="${msg == 'logout'}">
							<script>
								alert('로그아웃 되었습니다.');
							</script>
						</c:if>
					</form>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>