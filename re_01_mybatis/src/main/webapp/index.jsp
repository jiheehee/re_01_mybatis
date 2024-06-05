<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mybatis 기본활용</title>
</head>
<body>
	<h2>mybatis</h2>
	<h3>
		<a href = "${page }/mybatistest.do">접속 테스트</a>
	</h3>
	<h3>
		<a href="${path }/insertstudent.do">학생등록</a>
	</h3>
	<form action="${path }/insertstudentbyname.do" method="post">
		<input type="text" name="name">
		<input type="submit" name="저장">
	</form>
	






</body>
</html>