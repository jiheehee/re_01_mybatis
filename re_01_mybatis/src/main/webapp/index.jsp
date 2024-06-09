<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mybatis 기본활용 복습</title>
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
		<h5>[ insertStudentByname ]</h5>
		<input type="text" name="name" placeholder="이름">
		<input type="submit" name="저장">
	</form>
	<form action="${path }/insertstudentall.do" method="post">
		<h5>[ insertStudentAll ]</h5>
		<input type="text" name="name" placeholder="이름">
		<input type="text" name="phone" placeholder="전화번호">
		<input type="text" name="email" placeholder="이메일">
		<input type="submit" value="저장">
	</form> 
	<br>

	<h3>1. 전체 학생수 조회</h3>
	<h4>
		<a href="${path }/student/studentCount.do">1)전체 학생수</a>
	</h4>
	<br>
	<h3>2)학생조회하기</h3>
	<a href="${path }/student/studentbyno?no=1">2-1)1번학생 조회</a>
		
	




</body>
</html>