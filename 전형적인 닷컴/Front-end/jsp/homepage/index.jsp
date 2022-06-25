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
			<li><a href="#">전체 대학 조회</a></li>
			<li><a href="#">성적으로 적절 대학 조회</a></li>
			<li><a href="#">대학별 전형 조회</a></li>
		</ul>

	</div>
	</header>
	<section>
	<!-- 
	<h1 id="APITITLE">전형적인 API</h1>
	<p class="APITITLE-small">전형적인 API가 수집한 대학전형 데이터들을 제공합니다.</p>

	<div class="top_tit">

		<div>
			<p class="bigP">전형적인 API</p>
			는<br> 전형적인 API에서 보유한 대학전형 데이터를<br> <span class="high_tit">누구나
				쉽게 활용</span>할 수 있도록<br> <span class="high_tit">API를 외부에 공개</span>한
			<p class="bigP">프로그래밍 인터페이스</p>
			입니다
		</div>
		<div>
			<img alt="" src="../image/image2.png"
				style="width: 500px; height: 350px; margin-left: 100px;">
		</div>

	</div>

	<div class="top_txt">
		전형적인 Open API를 통해<br> 전형종류, 모집학과 , 모집인원, 평균등급, 경쟁률등의 데이터들을 누구든지
		이용할 수 있습니다.
	</div>

	<div class="tab_cont">
		<div class="con_topbox">
			<p class="topbox_tit">Open API란?</p>
			<p class="topbox_txt">API(Application Programming Interface, 응용
				프로그램 프로그래밍 인터페이스)는&nbsp;응용 프로그램에서 사용할 수 있도록,&nbsp;운영 체제나&nbsp;프로그래밍
				언어가 제공하는 기능을 제어할 수 있게 만든&nbsp;인터페이스를 뜻한다. 주로 파일 제어, 창 제어, 화상 처리, 문자
				제어 등을 위한 인터페이스를 제공한다.</p>
			<p class="topbox_etc">
				<span>출처</span> 위키백과
			</p>
		</div>
	</div>

	<p class="blt_tit">Open API 시작 가이드</p>


	<ul class="step_box">
		<li>
			<div class="step_sub">
				<div class="step_tit">01</div>
				<div class="step_txt">
					<span>사이트 회원가입</span>아이디, 비밀번호, 닉네임
				</div>
			</div>
		</li>
		<li>
			<div class="step_sub">
				<div class="step_tit">02</div>
				<div class="step_txt">
					<span>API 인증키 신청하기</span>API 인증키 신청
				</div>
			</div>
		</li>
		<li>
			<div class="step_sub">
				<div class="step_tit">03</div>
				<div class="step_txt">
					<span>API 인증키 확인</span>마이페이지에서 발급받은 인증키 확인
				</div>
			</div>
		</li>
		<li>
			<div class="step_sub">
				<div class="step_tit">04</div>
				<div class="step_txt">
					<span>API 데이터 상세확인</span> 전형적인 API 데이터 상세에서 API 사용법 확인
				</div>
			</div>
		</li>
		<li>
			<div class="step_sub">
				<div class="step_tit">05</div>
				<div class="step_txt">
					해당 기관 서비스 등록<br>진행 및 연결
				</div>
			</div>
		</li>
	</ul>
	
	<div class="btm_btn">
		<a title="인증 키 요청하기" href="/apisigin.jsp">인증 키 요청하기</a>
	</div>

 	-->
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
