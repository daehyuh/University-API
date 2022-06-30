<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entity.Entity"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>전형적인 닷컴</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/index.css">
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/detail.css">
<link rel="stylesheet" href="../../css/homepage.css">

<script>
var urlParams = new URL(location.href).searchParams;
var id = parseInt(urlParams.get('id'));
var school = "";


$.ajaxSetup({
    scriptCharset: "utf-8",
    contentType: "application/json; charset=utf-8"
});
$(
		  function(){
		            $.ajax({
		            method: 'GET',
		            url: 'http://API.전형적인.kro.kr/Api?apikey=a8cabf7c-93b2-427c-8cf1-9aca3de359cd',
		            dataType: 'json'
		        }).done(function (data) {
		            console.log(data);
		      
		        $.each(data, function(index, entry){
		        
		        if (entry['카운트'] == id){
		        	$("#대학이름").text(entry['대학교'])
		        	$("#전형유형").text(entry['전형유형']+' / '+entry['종합교과'])
		        	$("#전형명").text(entry['전형명'])
		        	$("#학과").text(entry['학과'])
		        	$("#2023년도모집인원").text(entry['모집인원'] + "명")
		        	$("#22년도경쟁률").text(entry['2022학년도 경쟁률'] + " : 1")
		        	$("#22년도평균등급").text(entry['2022학년도 평균등급'])
		        	school = entry['대학교'];
		        }
		        
		        });
		    });
		  }
		  );



  $(
  function(){
            $.ajax({
            method: 'GET',
            url: 'http://API.전형적인.kro.kr/Api?apikey=a8cabf7c-93b2-427c-8cf1-9aca3de359cd',
            dataType: 'json'
        }).done(function (data) {
            console.log(data);
            var table="<colgroup><col><col><col><col style='width: 110px;'><col><col><col style='width: 115px;'><col style='width: 207px;'><col style='width: 207px;'><col style='width: 90px;'><col><col></colgroup><tbody><tr><th scope='row'>번호</th><th scope='row'>지역</th><th scope='row'>모집시기</th><th scope='row'>대학이름</th><th scope='row'>본교/분교</th><th scope='row'>종합교과</th><th scope='row'>전형유형</th><th scope='row'>전형명</th><th scope='row'>학과</th><th scope='row'>2023년도 모집인원</th><th scope='row'>22학년도 경쟁률</th><th scope='row'>22학년도 평균등급</th></tr>";
        $.each(data, function(index, entry){
        if (entry['대학교'] == school){
         table+='<tr>';
         table+='<td>'+entry['카운트']+'</td>';
         table+='<td>'+entry['지역']+'</td>';
         table+='<td>'+entry['모집시기']+'</td>';
         table+='<td>'+entry['대학교']+'</td>';
         table+='<td>'+entry['본분교']+'</td>';
         table+='<td>'+entry['종합교과']+'</td>';
         table+='<td>'+entry['전형유형']+'</td>';
         table+='<td>'+entry['전형명']+'</td>';
         table+='<td>'+entry['학과']+'</td>';
         table+='<td>'+entry['모집인원']+"명"+'</td>';
         table+='<td>'+entry['2022학년도 경쟁률']+ ' : 1' + '</td>';
         
         if (entry['2022학년도 평균등급'] == 0){
        	table+='<td> - </td>';
         } else{
         	table+='<td>'+entry['2022학년도 평균등급']+'</td>';
         }
         table+='</tr>';
        }
        
        });
        table+='</tbody>';
        $('.detailUni-table').append(table);
    });
  }
  );
    </script>

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
			<li><a href="./index.jsp">전형적인 닷컴</a></li>
			<li><a href="./allUniSelect.jsp">전체 대학 조회</a></li>
			<li><a href="./scoreUniSelect.jsp">적절 대학 조회</a></li>
			<li><a href="../index.jsp">전형적인 API</a></li>
		</ul>

	</div>
	</header>
	<section>
	<div class="container">
		<div class="content-layout">
		
			<div class="title-area">
				<h2 class="tit">
					대학 상세 분석
				</h2>
			</div>
			
			<table class="detail-table">
				<colgroup>
					<col>
					<col>
					<col>
				</colgroup>
				<tr>
					<th>대학이름</th>
					<th>전형유형 / 종합교과</th>
					<th>전형명</th>
					<th>학과</th>
				</tr>
				<tr>
					<td id = "대학이름"></td>
					<td id = "전형유형"></td>
					<td id = "전형명"></td>
					<td id = "학과"></td>
				</tr>
				<tr>
					<th colspan="2">2023년도 모집인원</th>
					<th>22년도 경쟁률</th>
					<th>22년도 평균등급</th>
				</tr>
				<tr>
					<td colspan="2" id = "2023년도모집인원"></td>
					<td id = "22년도경쟁률"></td>
					<td id = "22년도평균등급"></td>
				</tr>
			</table>
			
			
			<div class="title-area">
				<h2 class="tit">
					같은 대학 전형들
				</h2>
			</div>
			    
			    
			<table class="detailUni-table">
			
			</table>
			
			
			
		</div>
	</div>
	</section>
	<footer>
			<h1>Copyright 2022. 전형적인 API. ALL RIGHTS RESERVED.</h1>
			<center>전형적인 API Team</center>
	</footer>
</body>
</html>
