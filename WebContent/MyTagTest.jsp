<%@ taglib uri="/WEB-INF/tld/MyTag.tld" prefix="mytag" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- (1) MyTagHandler 클래스 파일을 생성하여 멤버변수 5개를 받고, quick sort 알고리즘을 붙여넣고 
 			해당 클래스 파일을 선언해주는 TLD 파일을 생성해서 name을 myquick으로 설정해주고, MyTagTest.jsp를 
 			생성해서 본인이 생성한 myquick 태그를 호출하여 결과를 확인하자. -->
	<mytag:myquick num1="4" num2="11" num3="55" num4="1" num5="44"/>
</body>
</html>