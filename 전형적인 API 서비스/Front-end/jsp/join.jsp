<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entity.Entity"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
					<a href="../jsp/login.jsp" title="로그인 이동">로그인</a>
					<a id="active"  href="../jsp/join.jsp" title="회원가입 이동">회원가입</a>
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
				<form name="joinForm" action="/Join" method="post">
					<div class="title-area">
						<h2 class="tit">회원가입</h2>
					</div>

					<div class="join-wrap">
						<div class="join-intro">
							<span class="reset"> <strong>전형닷컴</strong>에 오신 것을 환영합니다.
							</span>
							<p>회원가입을 하시면 전형닷컴에서 제공하는 특성화고를 위한 대학 수시 전형 정보를 이용하실 수 있습니다.</p>
						</div>
						<ol class="step-list">
							<li class="on"><strong> STEP 1 <span> 정보입력 </span>
							</strong></li>
						</ol>
						<div class="tit-group">
							<h3>가입정보 입력</h3>
						</div>
						<div class="row-table">
							<table>
								<colgroup>
									<col style="width: 220px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">아이디</th>
										<td>
											<div class="input-btn-type-word-5 w460px">
												<input onchange="check(this, 5, 1)" id="um_id" name="um_id"
													title="아이디 입력" class="input-text w340px" type="text"
													maxlength="20">
												<div class="input-util">
													<p class="input-reference">5 ~ 20자 이내 영문, 숫자, 특수문자만
														가능합니다.</p>
													<p class="input-warning" style="display: none;"
														id="id_warning">아이디를 5자리 이상 입력해주세요</p>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">비밀번호</th>
										<td>
											<div class="input-btn-type-word-5 w460px">
												<input onchange="check(this, 8, 2)" id="um_pwd"
													name="um_pwd" title="비밀번호 입력"
													class="input-text w340px" type="password" maxlength="20">
												<div class="input-util">
													<p class="input-reference">8 ~ 20자 이내 비밀번호 입력</p>
													<p class="input-warning" style="display: none;"
														id="pw_warning">비밀번호를 8자리 이상 입력해주세요</p>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인</th>
										<td>
											<div class="input-btn-type-word-5 w460px">
												<input onchange="pwcheck(this, 'um_pwd')"
													id="um_password_check" name="um_password_check"
													title="비밀번호 확인 입력" class="input-text w340px"
													type="password" maxlength="20">
												<div class="input-util">
													<p class="input-warning" style="display: none;"
														id="pwcheck_warning">비밀번호가 일치하지 않습니다</p>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">닉네임</th>
										<td>
											<div class="input-btn-type-word-5 w460px">
												<input onchange="check(this, 0, 3)" id="um_name"
													name="um_name" title="닉네임 입력" class="input-text w340px"
													type="text" maxlength="10">
												<div class="input-util">
													<p class="input-reference">10자 이내 닉네임 입력</p>
													<p class="input-warning" style="display: none;"
														id="name_warning">닉네임을 입력해주세요</p>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="btn-group">
							<button type="button" class="button navy" onclick="btn_cancel('회원가입')">취소</button>
							<button type="button" class="button" onclick="btn_save()">회원
								가입</button>
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
