<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Q) fmt가 머에용? el jstl의 한 종류인 것 같긴 한뎅 뭐 할때 쓰이는건지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학생정보</h2>
	<div>
		<h3>등록된 학생 수: <c:out value="${count }" /></h3>
		<!-- 여기 있는 count는 어디서 난 count인지  ->  아무래도 Service에서 담아준 count같음-->
	</div>
<table>
	<tbody>
		<c:if test="${student!=null }"> <%-- Q) test는 그냥 임의의 변수인지? -> 아님! test는 조건을 나타내주는 속성! if문 같은거임 --%>
			<tr>
				<%-- Q) #{} ${} 이거 중에 replace 같은 속성을 가지고 있는게 뭐라고 했더라? -> ${}이게 replace랑 같은데 헷갈림.. 찾아보기 --%>			
				<%-- Q) student. 이거는 왜 해주는거지? 객체 접근마냥 해주는건가? --%>
				<td><c:out value="${student.studentNo }" /></td>
				<td><c:out value="${student.studentName }" /></td>
				<td><c:out value="${student.studentTel }" /></td>
				<td><c:out value="${student.studentEmail }" /></td>
				<td><c:out value="${student.studentAddr }" /></td>
				<td><c:out value="${student.reg_date }" /></td>								
			</tr>
		</c:if>
		<c:if test="${student==null && empty students }"> <%-- Q) students? 이건 어디 값을 받아온거지? --%>
		<tr>
			<td colspan="6">조회된 학생이 없습니다.</td> <%-- Q) colspan=6 이건 뭐지..? --%>
		</tr>
		</c:if>
		
 		<c:if test="${not empty students }"> <%--Q) notnull이랑 not empty랑 다른 점이 뭐야? 그냥 쌤이 다양하게 보여주실라고 이렇게 한건가? --%>
			<c:forEach var="student" items="${students }"> <%-- Q) items값은 어디서 가져오는거지? --%>
			<tr>
				<td><c:out value="${student.studentNo }" /></td>
				<td><c:out value="${student.studentName }" /></td>
				<td><c:out value="${student.studentTel }" /></td>
				<td><c:out value="${student.studentEmail }" /></td>
				<td><c:out value="${student.studentAddr }" /></td>
				<td>
					<fmt:formateDate value="${student.reg_date }" 
						dateStyle="full" /> <%-- Q) fmt가 뭔지..? 이게 어떻게 적용되는건지 --%>	
				</td>	
			</tr>
			</c:forEach>
		</c:if>
		
		<c:if test="${not empty mapStudent }">
		<tr>
			<td>${mapStudent.STUDENT_NO }</td>
   			<td>${mapStudent.STUDENT_NAME }</td>
   			<td>${mapStudent.STUDENT_TEL }</td>
   			<td>${mapStudent.STUDENT_EMAIL }</td>
   			<td>${mapStudent.STUDENT_ADDR }</td>
   			<td>${mapStudent.REG_DATE }</td>
		</tr>
		</c:if>		
	</tbody>
</table>


</body>
</html>