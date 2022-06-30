<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entity.Entity"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>전형적인 API</title>
<link rel="stylesheet" href="../css/index.css">
<script src="../js/check.js"></script>
</head>
<body>
	<header>
	<div class="inner-wrap">
		<div class="logo">
			<a href="../jsp/index.jsp" title="홈페이지 바로가기"><img alt="" src="../image/image.png"></a>
		</div>
		<%
			Entity login = null;
		if (session.getAttribute("LOGIN") != null) {
		%>
		<script type="text/javascript">
		alert("잘못된 접근입니다 메인페이지로 이동합니다");
		location.href = "../jsp/index.jsp";
		</script>
		<%
			} else {
		%>

		<div class="util">
			<div class="login">
				<a id="active" href="../jsp/login.jsp" title="로그인 이동">로그인</a>
				<a href="../jsp/join.jsp" title="회원가입 이동">회원가입</a>
			</div>
		</div>
		<%
			}
		%>

		<ul class="menu">
			<li><a id="active" href="../jsp/index.jsp">전형적인 API</a></li>
			<li><a href="../jsp/apiDetail.jsp">API 데이터 상세</a></li>
			<li><a href="../jsp/apisigin.jsp">API 인증키 신청</a></li>
			<li><a href="../jsp/apiKeyCheck.jsp">API 인증키 확인</a></li>
			<li><a href="../jsp/homepage/index.jsp">API 활용 예시</a></li>
		</ul>

	</div>
	</header>
	<section>
	<div class="container">

		<div class="content-leyout">
			<form name="loginForm" action="/Login" method="post">
				<div class="title-area">
					<h2 class="tit">로그인</h2>
				</div>
				
				<div class="login-wrap">
					<div class="login-intro">
						<span class="reset"> <strong>전형닷컴</strong>에 오신 것을 환영합니다.
						</span>
					</div>
					<div class="login-box">
						<div class="title-area">
							<h3 class="tit">아이디/비밀번호 로그인</h3>
						</div>
						<div class="content-area">
							<div class="in">
								<p class="reset">
									가입하신 아이디와 비밀번호를 입력해주세요. <br>
								</p>
								<div class="write-form">
									<div class="input-wrap">
										<input class="input-text" id="um_id" name="um_id"
											title="아이디 입력" placeholder="아이디 입력" type="text"
											maxlength="20"> 
										<input class="input-text" id="um_pwd" name="um_pwd" 
											title="비밀번호 입력" placeholder="비밀번호 입력" type="password" 
											maxlength="20">
									</div>
									<button type="button" class="btn-login" onclick="fn_login()">로그인</button>
								</div>
								<div class="link">
									<a href="javascript:location.href='join.jsp';">회원가입</a>
								</div>
								<div class="input-util" style="display: none;" id="warning">
									<label for="user_id" class="input-warning"> 아이디 또는
										비밀번호를 다시 확인해주세요 </label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>

	</div>
	</section>
	<footer>
			<h1>Copyright 2022. 전형적인 API. ALL RIGHTS RESERVED.</h1>
			<center>전형적인 API Team</center>
	</footer>
</body>
</html>
