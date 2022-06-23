<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entity.Entity"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전형닷컴</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="detail.css">
</head>
<body>
    <header>
        <div class="inner-wrap">
            <div class="logo">
                <a href="/index.html" title="홈페이지 바로가기">전형닷컴</a>
            </div>

            <div class="util">
                <div class="login">
                    <a href="login.html" title="로그인 이동">로그인</a>
                    <a href="join.html" title="회원가입 이동">회원가입</a>
                </div>
            </div>

            
		<ul class="menu">
			<li><a href="#">전형적인 닷컴</a></li>
			<li><a href="./index.jsp">전형적인 API</a></li>
			<li><a href="./apiDetail.jsp">전형적인 API 데이터 상세</a></li>
			<li><a href="./apisigin.jsp">API 인증키 신청</a></li>
			<li><a href="#">인증키 확인</a></li>
		</ul>
            
        </div>
    </header>
    <section>
    
            <h2 class="Detail-title">
                데이터 상세
            </h2>

            <div class="data-set-title mb-4">
                <div class="tit-area">
                    <p class="tit">전형적인 API 대학 전형 데이터</p>
                </div>
        
                <div class="cont">
                   전형적인 API 의 CSV 데이터 파일 , API를 제공합니다.
                </div>

                
                
            </div>
            <div class="data-detail-wrap">
                
                <span class="tagset csv">
                    csv
                </span>
            
                <div class="title">전형적인 API 대학 전형 데이터 다운로드</div>
            
                <div class="option-btns">
                    <a href="" onclick="" class="button" title="파일 다운로드">
                        다운로드
                    </a>
                </div>
            </div>
            
            <div class="data-detail-wrap">
                
                <span class="tagset json">
                    json
                </span>
            
                <div class="title">전형적인 API 활용신청</div>
            
                <div class="option-btns">
                    <a href="" onclick="" class="button" title="API 활용신청">
                        API 활용신청
                    </a>
                </div>
            </div>
        
                <div class="data-detail-wrap">
                
                <span class="tagset json">
                    web
                </span>
            
                <div class="title">데이터 미리보기</div>
            
                <div class="option-btns">
                    <a href="converter.htm" onclick="" class="button" title="API 활용신청">
                        미리보기
                    </a>
                </div>
            </div>
    
            <h3 class="mb-2">
                오픈API 정보
            </h3>

            <table>
                <tr>
                    <td colspan="2">서비스</td>
                    <td colspan="2">전형적인 API 데이터</td>
                </tr>
                <tr>
                    <td>업데이트 주간</td>
                    <td>연간</td>
                    <td>차기 등록 예정일</td>
                    <td>2023-01-01</td>
                </tr>
                <tr>
                    <td>매체유형</td>
                    <td>텍스트</td>
                    <td>전체 행	</td>
                    <td>285</td>
                </tr>
                <tr>
                    <td>확장자</td>
                    <td>XML, JSON</td>
                    <td>비용부과유무</td>
                    <td>무료</td>
                </tr>
                <tr>
                    <td rowspan="2">이용허락범위</td>
                    <td rowspan="2">이용허락범위 제한 없음</td>
                </tr>
            </table>

                



    </section>
    <footer>
        <div class="inner-wrap">
            <div class="footer-util">
                <div class="tel">

                </div>
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