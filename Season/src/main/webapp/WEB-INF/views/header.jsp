<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<header id="header">
		<a href="main" class="logo">계절밥상</a>
		<nav class="right">
			<c:if test="${identify == null}">
				<a href="${path}/login" class="button alt">로그인</a>
			</c:if>
			<c:if test="${identify != null}">
				${spot}님이 로그인 중입니다.  &nbsp&nbsp&nbsp&nbsp
				<a href="InfoCheck" class="button special">회원정보</a>
				<a href="${path}/logout" class="button special">로그아웃</a>
				
			</c:if>
		</nav>
	</header>
</body>
</html>