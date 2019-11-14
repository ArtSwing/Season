<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@ include file="header.jsp"%>
<script>
	$(document).ready(function() {
		$("#btnSave").click(function() {

			var title = $("#title").val(); // 변수 타이틀은 아이디 타이틀의 값
			var content = $("#content").val();
			if (title == "") {
				alert("제목을 입력하세요.");
				document.form1.title.focus();
				return;
			}
			if (content == "") {
				alert("내용을 입력하세요");
				document.form1.content.focus();
				return;
			}
			document.form1.submit();
			location.href = "${path}/food";
		});
		$("#btnCancel").click(function() {
			location.href = "${path}/food";
		});
		$("#btnSave").click(function() {
			location.href = "${path}/food";
		});

	});
	$("#btnSave").click(function() {
		location.href = "${path}/food";
	});
</script>
</head>
<body>
	<c:if test="${identify != 'admin' }">
	접근 권한이 없습니다.
			</c:if>
	<c:if test="${identify == 'admin' }">
		<div id="Contain">
			<div id="main_contents">
				<form name="form1" method="post" action="${path}/insertFoodOK">
					<p class="menu_title">&nbsp;&nbsp;메뉴추가</p>
					<table id="basic">
						<tr>
							<th>재료명</th>
							<th>유통기한 (제조일기준)</th>
							<th>원산지</th>
							<th>가격</th>
						</tr>
						<tr>
							<td><input type="text" id="name" name="name"></td>
							<td><input type="text" id="life" name="life"></td>
							<td><input type="text" id="country" name="country"></td>
							<td><input type="text" id="price" name="price"></td>
						</tr>
					</table>
					<button type="button" id="btnSave" class="btn" style="float: right; margin: 8px;">등록</button>
				</form>
			</div>
		</div>
	</c:if>
</body>
<%@ include file="footer.jsp"%>
</html>
