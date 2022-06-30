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
<link rel="stylesheet" href="../css/detail.css">
</head>
<body>
	<header>
	<div class="inner-wrap">
		<div class="logo">
			<a href="../jsp/index.jsp" title="홈페이지 바로가기"><img alt="" src="../image/image.png"></a>
		</div>
		<%
			Entity login = (Entity) session.getAttribute("LOGIN");
		%>
		<%
			if (login == null) {
		%>
		<div class="util">
			<div class="login">
				<a href="../jsp/login.jsp" title="로그인 이동">로그인</a>
				<a href="../jsp/join.jsp" title="회원가입 이동">회원가입</a>
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
			<li><a id="active" href="../jsp/index.jsp">전형적인 API</a></li>
			<li><a href="../jsp/apiDetail.jsp">API 데이터 상세</a></li>
			<li><a href="../jsp/apisigin.jsp">API 인증키 신청</a></li>
			<li><a href="../jsp/apiKeyCheck.jsp">API 인증키 확인</a></li>
			<li><a href="../jsp/homepage/index.jsp">API 활용 예시</a></li>
		</ul>

	</div>
	</header>
	<section>

	<h2 class="Detail-title">데이터 상세</h2>

	<div class="data-set-title mb-4">
		<div class="tit-area">
			<p class="tit">전형적인 API 데이터 상세</p>
		</div>

		<div class="cont">
		전형적인 API의  CSV 데이터 파일 , API를 제공합니다.<br><br>
		대학이름, 본분교, 지역, 모집시기, 학과, 전형유형, 전형세부, 전형명, 2023년도 모집인원, 2022학년도 경쟁률, 2022학년도 평균등급
		</div>
		
	</div>
	
	
	<div class="data-detail-wrap">

		<span class="tagset csv"> csv </span>

		<div class="title">전형적인 API 대학 전형 데이터 다운로드</div>

		<div class="option-btns">
			<a href="../jsp/data.csv" onclick="alert('CSV 파일 다운로드 시작')" class="button" title="파일 다운로드"> 다운로드 </a>
		</div>
	</div>

	<div class="data-detail-wrap">

		<span class="tagset json"> json </span>

		<div class="title">전형적인 API 활용신청</div>

		<div class="option-btns">
			<a href="../jsp/apisigin.jsp" onclick="" class="button" title="API 활용신청"> API 활용신청 </a>
		</div>
	</div>

	<div class="data-detail-wrap">

		<span class="tagset json"> web </span>

		<div class="title">데이터 미리보기</div>

		<div class="option-btns">
			<a href="../jsp/converter.htm" onclick="" class="button" title="API 활용신청">
				미리보기 </a>
		</div>
	</div>

	<h3 class="mb-2">오픈API 정보</h3>

          <table class="detail-table">
            	<colgroup>
            		<col style="width: 350px;">
            		<col>
            	</colgroup>
                <tr>
                    <th scope="row">서비스</th>
                    <td>전형적인 API 데이터</td>
                </tr>
                <tr>
                    <th scope="row">업데이트 주간</th>
                    <td>연간</td>
                </tr>
                <tr>
                    <th scope="row">차기 등록 예정일</th>
                    <td>2023-01-01</td>
                </tr>
                <tr>
                    <th scope="row">매체유형</th>
                    <td>텍스트</td>                    
                </tr>
                <tr>
                    <th scope="row">전체 행	</th>
                    <td>285</td>
                </tr>
                <tr>
                    <th scope="row">확장자</th>
                    <td>XML, JSON</td>
                </tr>
                <tr>
                    <th scope="row">비용부과유무</th>
                    <td>무료</td>
                </tr>
                <tr>
                    <th scope="row">이용허락범위</th>
                    <td>이용허락범위 제한 없음</td>
                </tr>
    	</table>
    	
    	
    	        <table class="detail-table">
            	<colgroup>
            		<col style="width: 350px;">
            		<col>
            	</colgroup>
                <tr>
                    <th scope="row">URL API 호출</th>
                    <td>http://API.전형적인.kro.kr/Api?apikey=(발급받은 키)</td>
                </tr>
                </table>
    	
	</section>
	<footer>
			<h1>Copyright 2022. 전형적인 API. ALL RIGHTS RESERVED.</h1>
			<center>전형적인 API Team</center>
	</footer>
</body>
</html>
