<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entity.Entity"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/userUpdate.css">

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
				login = (Entity) session.getAttribute("LOGIN");
			} else {
			%>
			<script type="text/javascript">
			alert("잘못된 접근입니다. 로그인을 해주시기 바랍니다");
			location.href = "../jsp/index.jsp";
			</script>
			<%
				}
			%>

			<div class="util">
				<div class="login">
					<%
						if (login != null) {
					%>
					<a><%=login.getUM_NAME()%>님</a>
					<%
						}
					%>
					<a href="/Logout" title="로그아웃">로그아웃</a> <a id="active" href="../jsp/userUpdate.jsp" title="회원수정">회원수정</a>
				</div>
			</div>

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

			<div class="content-layout">
				<form name="updateForm" action="/Update" method="post">
					<%
						if (login != null) {
					%>
					<input type="hidden" name="update_id" value="<%=login.getUM_ID()%>">
					<%
						}
					%>
					<div class="user-title-area">
						<h2 id="user-tit">회원정보 수정</h2>
					</div>
					<div class="tit-group">
						<h3>회원 기본정보</h3>
					</div>
					<div class="data-table">
						<table>
							<colgroup>
								<col style="width: 250px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span class="label">아이디</span></th>
									<td>
										<%
											if (login != null) {
											out.print(login.getUM_ID());
										}
										%>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="tit-group">
						<h3>회원정보 수정</h3>
					</div>
					<div class="row-table">
						<table>
							<colgroup>
								<col style="width: 250px;">
								<col>
							</colgroup>
							<tbody>

								<tr>
									<th scope="row"><label for="update_pwd" class="label">새
											비밀번호</label></th>
									<td><input onchange="check(this, 8, 2)" id="update_pwd"
										name="update_pwd" title="새 비밀번호 입력" class="input-text w340px"
										type="password" maxlength="20">
										<div class="input-util">
											<p class="input-reference">8 ~ 20자 이내 비밀번호 입력</p>
											<p class="input-warning" style="display: none;"
												id="pw_warning">비밀번호를 8자리 이상 입력해주세요</p>
										</div></td>
								</tr>
								<tr>
									<th scope="row"><label for="update_pwchk" class="label">비밀번호
											확인</label></th>
									<td><input onchange="pwcheck(this, 'update_pwd')"
										id="update_pwchk" name="update_pwchk" title="비밀번호 확인"
										class="input-text w340px" type="password" maxlength="20">
										<div class="input-util">
											<p class="input-warning" style="display: none;"
												id="pwcheck_warning">비밀번호가 일치하지 않습니다</p>
										</div></td>
								</tr>
								<tr>
									<th scope="row"><label for="update_name" class="label">닉네임</label>
									</th>
									<td><input onchange="check(this, 0, 3)" id="update_name"
										name="update_name" title="닉네임 입력" class="input-text w340px"
										type="text" maxlength="10">
										<div class="input-util">
											<p class="input-reference">10자 이내 닉네임 입력</p>
											<p class="input-warning" style="display: none;"
												id="name_warning">닉네임을 입력해주세요</p>
										</div></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
				<div class="btn-group">
					<input type="submit" class="button navy"
						onclick="btn_cancel('회원정보 수정')" value="취소"> <input
						type="button" class="button" onclick="btn_update()" value="수정">
				</div>
			</div>
		</div>
	</section>
	<footer>
			<h1>Copyright 2022. 전형적인 API. ALL RIGHTS RESERVED.</h1>
			<center>전형적인 API Team</center>
	</footer>
</body>
</html>
