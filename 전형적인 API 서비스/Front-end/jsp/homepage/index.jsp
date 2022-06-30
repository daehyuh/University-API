<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entity.Entity"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>전형적인 닷컴</title>
<link rel="stylesheet" href="../../css/index.css">
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/homepage.css">
</head>
<body>
	<header>
	<div class="inner-wrap">
		<div class="logo">
			<a href="./index.jsp" title="홈페이지 바로가기"><img alt="" src="../../image/image3.png"></a>
		</div>
		<%
			Entity login = (Entity) session.getAttribute("LOGIN");
		%>
		<%
			if (login == null) {
		%>
		<div class="util">
			<div class="login">
				<a href="../login.jsp" title="로그인 이동">로그인</a> <a href="../join.jsp"
					title="회원가입 이동">회원가입</a>
			</div>
		</div>
		<%
			} else {
		%>
		
		<div class="util">
			<div class="login">
				<a><%=login.getUM_NAME()%>님</a> <a href="/Logout" title="로그아웃">로그아웃</a>
			 <a href="../userUpdate.jsp" title="회원수정">회원수정</a>
			</div>
		</div>

		<%
			}
		%>
		
		<ul class="menu">
			<li><a id="active" href="./index.jsp">전형적인 닷컴</a></li>
			<li><a href="./allUniSelect.jsp">전체 대학 조회</a></li>
			<li><a href="./scoreUniSelect.jsp">적절 대학 조회</a></li>
			<li><a href="../index.jsp">전형적인 API</a></li>
		</ul>

	</div>
	</header>
	<section>
	<h1 id="APITITLE">전형적인 닷컴</h1>
	<p class="APITITLE-small">전형적인 API 서비스를 사용하여 만든 대학전형정보 사이트 이다.</p>

	<div class="top_tit">

		<div>
			<p class="bigP green">전형적인 닷컴</p>
			은<br> 전형적인 API에서 제공하는 대학전형 데이터<br> <span class="high_tit">를 활용하여
				<p class="bigP green">대학 입시전형 정보</p>를 주는 사이트 입니다.		
		</div>
		<div>
			<img alt="" src="../../image/image2.png"
				style="width: 500px; height: 350px; margin-left: 100px;">
		</div>

	</div>
	
	</section>
	<footer>
			<h1>Copyright 2022. 전형적인 API. ALL RIGHTS RESERVED.</h1>
			<center>전형적인 API Team</center>
	</footer>
</body>
</html>
