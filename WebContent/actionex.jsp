<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- (1) 강의자료 20페이지에 있는 actionex.jsp와 forwardex.jsp, includeex.jsp를 생성하고,
		actionex.jsp에서 표준액션태그를 이용해서 forward를 시행했을 때의 결과 화면과 include를 시행했을 때의 결과 화면을 캡처하자. -->
	<h3>--before--</h3>
	<jsp:include page="includeex.jsp"/>
	<h3>--after--</h3>
</body>
</html>