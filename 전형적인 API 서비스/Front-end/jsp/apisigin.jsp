<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entity.Entity"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>전형적인 API</title>
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/apisigin.css">
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
					<a href="/Logout" title="로그아웃">로그아웃</a> <a href="../jsp/userUpdate.jsp" title="회원수정">회원수정</a>
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
		<div class="api-container">
			<div id="contents">
				<div id="api-div">
					<div class="title-area">
						<h2 class="apt-tit">API 인증키 신청</h2>
					</div>
					<form name="apiForm" action="/ApiKeyMake" method="post">
						<div class="data-set-title">
							<div class="tit-area">
								<p class="tit">전형적인 API 대학 전형 데이터</p>
							</div>
						</div>
						<table class="dataset-table">
							<tbody>
								<tr class="bg-blue tr">
									<th class="th ceil-border-right-and-bottom">제공기관</th>
									<td class="td ceil-border-right-and-bottom">전형적인 API</td>
									<th class="th ceil-border-right-and-bottom">서비스유형</th>
									<td class="td ceil-border-right-and-bottom">교육</td>
								</tr>
								<tr class="bg-blue tr">
									<th class="th ceil-border-right-and-bottom">심의여부</th>
									<td class="td ceil-border-right-and-bottom">자동승인</td>
									<th class="th ceil-border-right-and-bottom">신청유형</th>
									<td class="td ceil-border-right-and-bottom">인증키 신청</td>
								</tr>
								<tr class="bg-blue tr">
									<th class="th ceil-border-right-and-bottom">처리상태</th>
									<td class="td ceil-border-right-and-bottom">신청</td>
									<th class="th ceil-border-right-and-bottom">활용기간</th>
									<td class="td ceil-border-right-and-bottom">기간 제한 없음</td>
								</tr>
							</tbody>
						</table>
						<div class="api-tit-group">
							<h3 class="tit">활용목적 선택</h3>
						</div>
						<div class="api-row-table">
							<table class="api-table">
								<colgroup>
									<col style="width: 220px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><span class="label"> 활용목적 </span></th>
										<td>
											<div class="label-group">
												<%
													if (login != null) {
												%>
												<input type="hidden" name="um_id"
													value="<%=login.getUM_ID()%>">
												<%
													}
												%>
												<span class="col"> <input type="radio" id="radio1"
													name="apiUses" title="활용목적" value="apiUses01"
													checked="checked"> <label for="radio1">웹
														사이트 개발</label>
												</span> <span class="col"> <input type="radio" id="radio2"
													name="apiUses" title="활용목적" value="apiUses02"> <label
													for="radio2">앱 개발</label>
												</span> <span class="col"> <input type="radio" id="radio3"
													name="apiUses" title="활용목적" value="apiUses03"> <label
													for="radio3">기타</label>
												</span> <span class="col"> <input type="radio" id="radio4"
													name="apiUses" title="활용목적" value="apiUses04"> <label
													for="radio4">참고자료</label>
												</span> <span class="col"> <input type="radio" id="radio5"
													name="apiUses" title="활용목적" value="apiUses05"> <label
													for="radio5">연구(논문 등)</label>
												</span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<h3 class="tit"
							style="padding: 0px 0px 20px 0px; margin: 40px 0px 0px 0px;">
							상세기능정보 선택</h3>
						<div class="tech-table">
							<table class="api-tech-table">
								<colgroup>
									<col style="width: 80px;">
									<col style="width: 320px;">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">상세기능</th>
										<th scope="col">설명</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input onchange="api_checkbox(this, 1)"
											type="checkbox" title="전형적인 API 대학 전형 데이터" id="apiTechChk"
											name="apiTechChk" value="Y"></td>
										<td>전형적인 API 대학 전형 데이터</td>
										<td>특성화고 3학년 대학 실기(서울) IT전형과 관련된 데이터 목록 조회</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="input-util">
							<!-- 상세기능정보 -->
							<p class="input-warning" style="display: none;" id="tech_warning">
								* 상세기능을 1가지 이상 선택해주세요</p>
						</div>
						<h3 class="tit"
							style="padding: 0px 0px 20px 0px; margin: 40px 0px 0px 0px;">
							라이선스 표시</h3>
						<div class="tech-table">
							<table>
								<colgroup>
									<col style="width: 400px;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><span class="label"> 이용허락범위 </span></th>
										<td>
											<div class="mt5">
												<input onchange="api_checkbox(this, 2)" type="checkbox"
													id="licenseChk" name="licenseChk" value="Y"> <label
													for="licenseChk">동의합니다</label>
												<div class="input-util">
													<!-- 라이센스 -->
													<p class="input-warning" style="display: none;"
														id="license_warning">* 이용허락범위에 동의하셔야 신청이 가능합니다.</p>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
					<div class="btn-group">
						<button type="button" class="button navy"
							onclick="btn_cancel('API 신청')">취소</button>
						<button type="button" class="button" onclick="api_save()">API
							신청</button>
					</div>
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
