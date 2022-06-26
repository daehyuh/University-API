<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Javascript + jQuery + Ajax 연습하기</title>
    <!-- JQuery를 import 합니다 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
$.ajaxSetup({
    scriptCharset: "utf-8",
    contentType: "application/json; charset=utf-8"
});
  
  $(
  function(){
  
   $('#btn .btnLoad').click(function(){
   
    $.getJSON("/jsp/test.json", function(data){ //getJSON.js 파일을 읽어서 data로 인자를 넘긴다
     $('#display').empty();
     console.log(data);
        var table="<table border='1'><tr><td>인덱스</td><td>지역</td><td>수시/정시</td><td>대학</td><td>본교/분교</td><td>학과</td><td>종합/교과</td></td><td>전형</td></td><td>23년도 모집 인원</td></tr>";
        $.each(data, function(index, entry){
         table+='<tr>';
         table+='<td>'+entry['카운트']+'</td>';
         table+='<td>'+entry['지역']+'</td>';
         table+='<td>'+entry['모집시기']+'</td>';
         table+='<td>'+entry['대학교']+'</td>';
         table+='<td>'+entry['본분교']+'</td>';
         table+='<td>'+entry['학과']+'</td>';
         table+='<td>'+entry['종합교과']+'</td>';
         table+='<td>'+entry['전형유형']+" "+entry['전형명']+'</td>';
         table+='<td>'+entry['모집인원']+"명"+'</td>';
         table+='<td>'+entry['22년도 경쟁률']+"명"+'</td>';
         table+='<td>'+entry['22년도 평균등급']+"명"+'</td>';
         table+='<td>'+entry['22년도 평균등급']+"명"+'</td>';
         table+='</tr>';
        });
        table+='</table>';
        $('#display').append(table);
    });
   });
  }  
 
  );
</script>
</head>
<body>
<input id="myscore" type="text">
<div id="btn">
  <div class="btnLoad">
    HTML 읽어오기
  </div>
  <div id="display">
  </div>
</div>
</body>
</html>