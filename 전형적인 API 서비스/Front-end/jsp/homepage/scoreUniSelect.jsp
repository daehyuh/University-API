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
<script src="../../js/check.js"></script>
<script type="text/javascript">
$.ajaxSetup({
    scriptCharset: "utf-8",
    contentType: "application/json; charset=utf-8"
});
  
  $(
  function(){
  
   $(".button").click(function(){
	  	   const score = $("#score").val();
	  	   if(score == "" || score == null){
	  		   alert("공백은 조회할 수 없습니다");
	  		   return;
	  	   }
	  	   if(score < 1 || score > 9){
	  		   return;
	  	   }
           $.ajax({
           method: 'GET',                             
           url: 'http://API.전형적인.kro.kr/Api?apikey=a8cabf7c-93b2-427c-8cf1-9aca3de359cd',
           dataType: 'json'                             
       }).done(function (data) {
           console.log(data);
     $('#display').empty();
        var table="<table border='1'><tr><th scope='row'>인덱스</th><th scope='row'>지역</th><th scope='row'>수시/정시</th><th scope='row'>대학</th><th scope='row'>본교/분교</th><th scope='row'>학과</th><th scope='row'>종합/교과</th><th scope='row'>전형유형</th><th scope='row'>전형명</th><th scope='row'>23년도 <br>모집 인원</th><th scope='row'>22년도 <br>경쟁률</th><th scope='row'>22년도 <br>평균등급 / 내 등급</th><th scope='row'>종합판단</th></tr>";        
        $.each(data, function(index, entry){
         var valueById = $('#score').val();         
         table+='<tr>';
         table+='<td>'+entry['카운트']+'</td>';
         table+='<td>'+entry['지역']+'</td>';
         table+='<td>'+entry['모집시기']+'</td>';
         table+='<td>'+entry['대학교']+'</td>';
         table+='<td>'+entry['본분교']+'</td>';
         table+='<td>'+entry['학과']+'</td>';
         table+='<td>'+entry['종합교과']+'</td>';
         table+='<td>'+entry['전형유형']+'</td>';
         table+='<td>'+entry['전형명']+'</td>';
         table+='<td>'+entry['모집인원']+"명"+'</td>';
         table+='<td>'+entry['2022학년도 경쟁률']+ ' : 1' + '</td>';
         
         if (entry['2022학년도 평균등급'] == 0){
        	 table+='<td> - </td>';
        	 table+='<td> - </td>';
         } else {
         
         var calcscore = (parseFloat(valueById) - entry['2022학년도 평균등급']).toPrecision(2);
         var evaluation = '';
         var evaluationcolor = '';
         table+='<td>'+entry['2022학년도 평균등급']+' / '+valueById+'</td>';
         
         
         
         
    	 if (calcscore > 0 &&  calcscore < 1) {
    		 evaluation = '상향 (▲'+calcscore+')';
    		 table+="<td class ='bad'>"+evaluation+'</td>';
    	 } else if (calcscore >= 1 ) {
    		 evaluation = '과도 상향 (▲'+calcscore+')';
    		 table+="<td class ='bad'>"+evaluation+'</td>';
    	 } else if(calcscore <= 0 && calcscore > -1 ) {
    		 evaluation = '하향 (▼'+calcscore+')';
    		 table+="<td class ='good'>"+evaluation+'</td>';
    	 } else if(calcscore <= -1 ) {
    		 evaluation = '과도 하향 (▼'+calcscore+')';
    		 table+="<td class ='good'>"+evaluation+'</td>';
    	 }
         }
         
         table+='</tr>';
        });
        table+='</table>';
        $('.detailUni-table').append(table);
    });
   });
 });
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
			<li><a id="active" href="./scoreUniSelect.jsp">성적으로 적절 대학 조회</a></li>
			<li><a href="../index.jsp">전형적인 API</a></li>
		</ul>

	</div>
	</header>
	<section>
	<div class="container">
		<div class="content-layout">
			<div class="title-area">
				<h2 class="tit">
					성적으로 적절 대학 조회
				</h2>
			</div>
			<form name="scoreForm" id="scoreForm" action="#" method="post">
			<div class="row-table">
				<table>
					<colgroup>
						<col style="width: 300px;">
						<col>						
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">내 등급입력</th>
							<td>
								<input onchange="score_check(this)" type="text" class="input-text w340px" id="score" name="score">
								<input type="button" class="button" value="조회">
								<div class="input-util">
									<p class="input-warning" style="display: none;" 
									   id="score_warning">1 ~ 9 사이의 등급을 입력해주세요</p>
								</div>
							</td>
							<td>
								<table>
									<tr>
										<td>과도상향</td>
										<td class="bad">+1.0 ~ </td>
									</tr>
									<tr>
										<td>상향</td>
										<td class="bad">+0.1 ~ +0.9</td>
									</tr>
									<tr>
										<td>하향</td>
										<td class="good">0 ~ -0.9</td>
									</tr>
									<tr>
										<td>과도하향</td>
										<td class="good">-1.0 ~ </td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			</form>
			
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
