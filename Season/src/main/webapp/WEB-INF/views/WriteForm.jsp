<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글쓰기 폼</title>
</head>
<body>
<div class="container" style="overflow: hidden; position: relative;">
		<br> <a class="nav-link, hypertext_none" href="${pageContext.request.contextPath}/admin/CEOBoard">
			<b style="font-size: 30px;">CEO게시판</b>
		</a>
	</div>

	<div class="container">
		<form class="text-center p-5" method="post">
			<input type="text" class="form-control" placeholder="제목" name="cboard_title" value="" required>
			<!-- name값과 메서드의 매개변수가 이름이 같으면 알아서 넣어줌 -->
			<textarea class="form-control" rows="20" placeholder="내용" name="cboard_con" value="" required></textarea>
			<button type="submit" class="btn btn-info btn-block">작성하기</button>
		</form>
	</div>
</body>
</html>