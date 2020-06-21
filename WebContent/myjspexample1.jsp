<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		input{
			width:50px;
			height:50px;
		}
		.output{
			height: 50px;
			background: #e9e9e9;
			font-size:24px;
			font-weight: bold;
			text-align: right;
			padding:0px 5px;
		}
	</style>
</head>
<body>
	<!-- (1)사용자로부터 num1과 num2를 URL get 방식의 "쿼리문으로" 입력받으면 계산기 결과창에 num1과 num2의 합으로 보여질 수 있도록
	       myjspexample1.jsp를 수정해보자. 단 이 때 태그를 스크립트릿 태그와 표현식 태그만 사용하도록 한다. -->
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int sum = num1+num2;
	%>
	<div>
		<form action = "cal3" method="get">
			<table>
			  <tr>
			  	<td class="output" colspan="4"><%=sum %></td>
			  </tr>
			  <tr>
			  	<td><input type="submit" name="operator" value="CE"/></td>
			  	<td><input type="submit" name="operator" value="C"/></td>
			  	<td><input type="submit" name="operator" value="BS"/></td>
			  	<td><input type="submit" name="operator" value="/"/></td>
			  </tr>
			  <tr>
			  	<td><input type="submit" name="value" value="7"/></td>
			  	<td><input type="submit" name="value" value="8"/></td>
			  	<td><input type="submit" name="value" value="9"/></td>
			  	<td><input type="submit" name="operator" value="*"/></td>
			  </tr>
			  <tr>
			  	<td><input type="submit" name="value" value="4"/></td>
			  	<td><input type="submit" name="value" value="5"/></td>
			  	<td><input type="submit" name="value" value="6"/></td>
			  	<td><input type="submit" name="operator" value="-"/></td>
			  </tr>
			  <tr>
			  	<td><input type="submit" name="value" value="1"/></td>
			  	<td><input type="submit" name="value" value="2"/></td>
			  	<td><input type="submit" name="value" value="3"/></td>
			  	<td><input type="submit" name="operator" value="+"/></td>
			  </tr>
			  <tr>
			  	<td></td>
			  	<td><input type="submit" name="value" value="0"/></td>
			  	<td><input type="submit" name="dot" value="."/></td>
			  	<td><input type="submit" name="operator" value="="/></td>
			  </tr>
			</table>		
		</form>
	</div>
</body>
</html>