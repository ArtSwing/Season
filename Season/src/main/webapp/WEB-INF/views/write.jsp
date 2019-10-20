<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>건의사항 게시판 글 작성</title>
<%@ include file="header.jsp"%>
<script>
	$(document).ready(function() {
		$("#btnSave").click(function() {
	
			var title = $("#title").val(); // 변수 타이틀은 아이디 타이틀의 값
			var content = $("#content").val();
			var spot =  '<%=(String)session.getAttribute("spot")%>';
			if(title == "") {
				alert("제목을 입력하세요.");
				document.form1.title.focus();
				return;
			}
			if(content == "") {
				alert("내용을 입력하세요");
				document.form1.content.focus();
				return;
			}
		document.form1.submit();
		});
	});
</script>
</head>
<body>
	<form name="form1" method="post" action="${path}/insert">
		<div style="float: right">이름 : ${dto.spot}</div>
		<div>
			제목 <input name="title" id="title" size="80" placeholder="제목을 입력해주세요.">
		</div>
		<div>
			내용
			<textarea name="content" id="content" rows="4" cols="80"
				placeholder="내용을 입력해주세요"></textarea>
		</div>
		<div style="width: 650px; text-align: center;">
			<button type="button" id="btnSave">확인</button>
			<button type="reset">취소</button>
		</div>
	</form>
</body>
<%@ include file="footer.jsp"%>
</html>