<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�۾��� ��</title>
</head>
<body>
<div class="container" style="overflow: hidden; position: relative;">
		<br> <a class="nav-link, hypertext_none" href="${pageContext.request.contextPath}/admin/CEOBoard">
			<b style="font-size: 30px;">CEO�Խ���</b>
		</a>
	</div>

	<div class="container">
		<form class="text-center p-5" method="post">
			<input type="text" class="form-control" placeholder="����" name="cboard_title" value="" required>
			<!-- name���� �޼����� �Ű������� �̸��� ������ �˾Ƽ� �־��� -->
			<textarea class="form-control" rows="20" placeholder="����" name="cboard_con" value="" required></textarea>
			<button type="submit" class="btn btn-info btn-block">�ۼ��ϱ�</button>
		</form>
	</div>
</body>
</html>