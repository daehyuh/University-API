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
   var sortType = 'asc';

   function sortContent(index) {
   	
       var table = document.getElementsByTagName('table');

       sortType = (sortType =='asc')?'desc' : 'asc';

       var checkSort = true;
       var rows = table[0].rows;

       while (checkSort) { // 현재와 다음만 비교하기때문에 위치변경되면 다시 정렬해준다.
           checkSort = false;

           for (var i = 1; i < (rows.length - 1); i++) {
               var fCell = rows[i].cells[index].innerHTML.toUpperCase();
               var sCell = rows[i + 1].cells[index].innerHTML.toUpperCase();

               var row = rows[i];

               // 오름차순<->내림차순 ( 이부분이 이해 잘안됬는데 오름차순이면 >, 내림차순이면 <
               //                        이고 if문의 내용은 동일하다 )
               if ( (sortType == 'asc' && fCell > sCell) || 
                       (sortType == 'desc' && fCell < sCell) ) {

                   row.parentNode.insertBefore(row.nextSibling, row);
                   checkSort = true;
               }
           }
       }
   }
   
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
            var table="<colgroup><col><col><col><col style='width: 110px;'><col><col><col style='width: 130px;'><col style='width: 270px;'><col style='width: 220px;'><col style='width: 90px;'></colgroup><tbody>";
            	table+="<tr>";
            	table+="<th scope='row' onclick='sortTable(0)'>번호</th>";
            	table+="<th scope='row' onclick='sortContent(1)' >지역</th>";
          		table+="<th scope='row' onclick='sortContent(2)'>모집시기</th>";
       			table+="<th scope='row' onclick='sortContent(3)'>대학이름</th>";
   				table+="<th scope='row' onclick='sortContent(4)'>본교/분교</th>";
				table+="<th scope='row' onclick='sortContent(5)'>종합교과</th>";
				table+="<th scope='row' onclick='sortContent(6)'>전형유형</th>";
				table+="<th scope='row' onclick='sortContent(7)'>전형명</th>";
				table+="<th scope='row' onclick='sortContent(8)'>학과</th>";
				table+="<th scope='row' onclick='sortContent(9)'>2023년도 모집인원</th>";
				table+="<th scope='row'>분석</th>";
				table+="</tr>";
        
         $.each(data, function(index, entry){
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
            table+='<td>'+'<a href="./detailUni.jsp?id='+entry['카운트']+'">분석</td>';
//            table+='<td>'+entry['2022학년도 경쟁률']+'</td>';
//            table+='<td>'+entry['2022학년도 평균등급']+'</td>';
            table+='</tr>';
           });
           table+='</tbody>';
           $('.detail-table').append(table);
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
			<li><a id="active" href="./allUniSelect.jsp">전체 대학 조회</a></li>
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
					전체 대학 조회
				</h2>
			</div>
		<table class="detail-table" name="detail-table">


		        
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
