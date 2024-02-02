<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P> Server to : ${data} </P>
<P> Server to : ${num} </P>
<hr>
<P> 번호 : ${person1.code} </P>
<P> 이름 : ${person1.strData} </P>
<P> 나이 : ${person1.numData} </P>
<P> 생년월일 : ${person1.dateData} </P>

<a href="mavCase">[이동]</a>

<hr>

<form action="login" method="get">
	<input type="text" name="id" placeholder="아이디" ><br>
	<input type="password" name="pwd" placeholder="비밀번호">
<!-- 	<input type="submit" value="로그인"> -->

</form>

<hr>

<input type="text" id="id_in">
<input type="password" id="pw_in">
<button id="lbtn">로그인</button>

<hr>

<h2>DTO를 활용한 전송</h2>
<form action="dtoSend" method="post">
	<input type="number" name="code" placeholder="번호"><br>
	<input type="text" name="strData" placeholder="이름"><br>
	<input type="number" name="numData" placeholder="나이"><br>
	<input type="date" name="dateData" placeholder="생일"><br>
	<input type="submit" value="전송">
</form>

</body>
<script type="text/javascript">
/* js로 데이터 전송 : Get방식. location.href 활용법 */
	const idinput = document.querySelector("#id_in");
	const pwinput = document.querySelector("#pw_in");
	const logbtn = document.querySelector("#lbtn");
		
	
	logbtn.onclick = function() {
		let idv = idinput.value;
		let pwv = pwinput.value;
		let str = "login?id=" + idv + "&pwd=" + pwv;
		location.href=str;
	}
</script>
</html>
