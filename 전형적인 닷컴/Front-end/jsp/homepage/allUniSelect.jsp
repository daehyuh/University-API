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
<link rel="stylesheet" href="../../css/detail.css">
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
				<a href="../jsp/login.jsp" title="로그인 이동">로그인</a> <a href="join.jsp"
					title="회원가입 이동">회원가입</a>
			</div>
		</div>
		<%
			} else {
		%>

		<div class="util">
			<div class="login">
				<a><%=login.getUM_NAME()%>님</a> <a href="/Logout" title="로그아웃">로그아웃</a>
			 <a href="../jsp/userUpdate.jsp" title="회원수정">회원수정</a>
			</div>
		</div>

		<%
			}
		%>
		
		<ul class="menu">
			<li><a href="./index.jsp">전형적인 닷컴</a></li>
			<li><a href="../index.jsp">전형적인 API</a></li>
			<li><a href="./allUniSelect.jsp">전체 대학 조회</a></li>
			<li><a href="#">성적으로 적절 대학 조회</a></li>
			<li><a href="#">대학별 전형 조회</a></li>
		</ul>

	</div>
	</header>
	<section>
	<div class="container">
		<div class="content-layout">
			<div class="title-area">
				<h2 class="tit">
					전체 대학 조회
				</h2>
			</div>
		<table class="detail-table">
				<colgroup>
	           		<col>
	           		<col>
	           		<col>
	           		<col>
	           		<col>
	           		<col>
	           		<col>
	           		<col>
	            	<col style="width: 150px;">
		        </colgroup>
				<tbody>
					<tr class="bg-blue tr">						
						<th scope="row">번호</th>
						<th scope="row">지역</th>
						<th scope="row">모집시기</th>
						<th scope="row">대학이름</th>
						<th scope="row">본교/분교</th>
						<th scope="row">학과</th>
						<th scope="row">전형유형</th>
						<th scope="row">전형세부</th>
						<th scope="row">전형명</th>
						<th scope="row">2023년도 모집인원</th>
					</tr>
					<tr class="bg-blue tr">
						<td>
							<a href="javascript:location.href='#'">1</a>
						</td>
						<td>서울</td>
						<td>수시</td>
						<td>건국대학교</td>
						<td>본교</td>
						<td>스마트ICT융합공학과</td>
						<td>학생부위주</td>
						<td>교과</td>
						<td>KU지역균형</td>
						<td>4</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</section>
	<footer>
	<div class="inner-wrap">
		<div class="footer-util">
			<div class="tel"></div>
			<div class="sns-share">
				<a href="https://hanyang.sen.hs.kr/" target="_blank" title="새창 열기">
					<i class="iconset ico-hanyang">한양공고 홈페이지</i>
				</a>
			</div>
		</div>
		<div class="footer-link"></div>
		<div class="footer-info"></div>
	</div>
	</footer>
</body>
</html>
