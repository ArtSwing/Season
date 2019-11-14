<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@ include file="header.jsp" %>
<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body>
	<div style="whith: 100%;
	background-color: #FFFFFF;
	margin: 70px 100px 100px 100px;
	padding: 30px 30px 30px 20px;
	text-align: center;">
	<h1> 계절밥상 공급 관리 페이지 사용법 안내 </h1><br>
	1. 메뉴관리 : 계절밥상 식재료에 대한 유통기한, 원산지 표기 등등 <br>
	2. 재고관리 : 각 매장별 식재료 재고 현황 <br>
	3. 발주관리 : 정기/비정기 구분에 따른 식재료 신청 <br>
	4. 건의사항 : 본사에 자유롭게 건의사항 작성 <br>
	5. 매출관리 : 지점별 매출 통계 현황
	</div>
	
</body>
<%@ include file="footer.jsp" %>
</html>
