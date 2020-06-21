<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- (1) arithmatic.jsp를 생성하여 실행했을 때, 사용자로부터 "쿼리문으로" start, end, step을 입력받으면 
			forEach를 이용해서 start값부터 end까지 step 간격으로 숫자를 출력해주는 코드를 작성해보자 -->
	<c:forEach var="i" begin="${param.start }" end="${param.end }" step="${param.step }">
		${i } 
	</c:forEach>
</body>
</html>