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
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/keyCheck.css">
</head>
<body>
	<header>
		<div class="inner-wrap">
		<div class="logo">
			<a href="../jsp/index.jsp" title="홈페이지 바로가기"><img alt="" src="../image/image.png" width="300px" height="70px"></a>
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
					<a href="/Logout" title="로그아웃">로그아웃</a> <a href="../jsp/userUpdate.jsp" title="회원수정">회원수정</a>
				</div>
			</div>

			<ul class="menu">
				<li><a href="#">전형적인 닷컴</a></li>
				<li><a href="../jsp/index.jsp">전형적인 API</a></li>
				<li><a href="../jsp/apiDetail.jsp">전형적인 API 데이터 상세</a></li>
				<li><a href="../jsp/apisigin.jsp">API 인증키 신청</a></li>
				<li><a href="../jsp/apiKeyCheck.html">인증키 확인</a></li>
			</ul>

		</div>
	</header>
	<section>
		<div class="container">
			<div class="contents-layout">
				<div id="contents">
					<h2 class="key-tit">API 인증키 조회</h2>
					<div class="list-top">
						<span class="count float-1"> 발급당한 키 </span>
					</div>
					<div class="key-table">
						<table>
							<colgroup>
								<col style="width: 400px;">
								<col>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">발급일자</th>
									<th scope="col">인증키</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<%
											if (login != null) {
											out.print(login.getUM_KEYDATE());
										}
										%>
									</td>
									<td class="a-1">
										<%
											if (login != null) {
											out.print(login.getUM_APIKEY());
										}
										%>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
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