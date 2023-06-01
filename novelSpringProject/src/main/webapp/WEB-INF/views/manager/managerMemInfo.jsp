<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title></title>
    
    <link rel="canonical" href="dashboard.js">
    <link href="bootstrap.min.css" rel="stylesheet">

      <!-- jQuery CDN 시작 -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
     <!-- jQuery CDN 끝 -->
      <script type="text/javascript">
      $(function(){
    	  /* globals Chart:false, feather:false */
    	  (() => {
    	    'use strict'

    	    feather.replace({ 'aria-hidden': 'true' })


    	  })()
    	  
    	  $("#sBtn").click(function(){
    		$("#sfrm").submit();  
    	  });
      
    	  $("#usBtn").click(function(){
      		$("#usfrm").submit();  
      	  });
    	  
    	  $("#modBtn").click(function(){
        		$("#modFrm").submit();  
        	  });
    	  
    	  
    	  
     
      });
      </script>
      
      <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>
        <!-- Custom styles for this template -->
      <link href="dashboard.css" rel="stylesheet">
      
</head>
<body>
<form action="stopId.do" id="sfrm" method="post">
        <input type="hidden" value="${ memInfo.id  }" name="id"><!-- 정지 서브밋으로 넘길 값 -->
        </form>
        
<form action="unStopId.do" id="usfrm" method="post">
        <input type="hidden" value="${ memInfo.id  }" name="id"><!--  서브밋으로 넘길 값 -->
        </form>
        
    <form action="modifyMemInfoFrm.do" id="modFrm" method="post">
        <input type="hidden" value="${ memInfo.id  }" name="id">
        </form>

<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="dashBoardFrm.do">소설조아</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="managerLogout.do">Sign out</a>
    </div>
  </div>
</header>

<div class="container-fluid">
  <div class="row">
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">회원 정보</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
        </div>
      </div>

     <div class="card text-bg-dark mb-3" style="max-width: 1100px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="http://localhost/noveljoa/_next/static/images/${ memInfo.thumbnail  }" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">

      <div class="card-body">
        <h1 class="card-title"><c:out value="${ memInfo.id  }"/>님의 회원 정보</h1><br>
        <ul>
       <li><h5 class="card-text">이름 : <c:out value="${ memInfo.name  }"/> </h5></li>
       <li><h5 class="card-text">생년월일 : <fmt:formatDate value="${ memInfo.birthDate}" pattern="yyyy년 MM월 dd일"/> </h5></li>
       <li><h5 class="card-text">Email : <c:out value="${ memInfo.email  }"/></h5></li>
       <li><h5 class="card-text">전화번호 : <c:out value="${ memInfo.phone  }"/></h5></li>
       <li><h5 class="card-text">소설 수  : <c:out value="${ memInfo.novelCnt  }"/>
       <button type="button" class="btn btn-outline-light btn-sm" onclick="location.href='managerNovelFrm.do?id=${ memInfo.id }' ">
            <span data-feather="arrow-left" class="align-text-bottom"></span>
            Look
          </button>
          </h5>
       </li>
       <li><h5 class="card-text">댓글 수 : <c:out value="${ memInfo.commentCnt  }"/>
       <button type="button" class="btn btn-outline-light btn-sm" onclick="location.href='commentManagerFrm.do?id=${ memInfo.id }' ">
            <span data-feather="arrow-left" class="align-text-bottom"></span>
            Look
          </button>
       </h5></li>
       <li><h5 class="card-text">최근 방문 날짜 : <fmt:formatDate value="${ memInfo.visitDate }" pattern="yyyy년 MM월 dd일" /></h5></li>
       <li><h5 class="card-text">정지일 : <fmt:formatDate value="${ memInfo.susPeriod }" pattern="yyyy년 MM월 dd일"/>
        
             <button type="button" class="btn btn-outline-light btn-sm" id=sBtn >
            <span data-feather="lock" class="align-text-bottom"></span>
            정지
          </button>
   
       <button type="button" class="btn btn-outline-light btn-sm" id="usBtn">
            <span data-feather="unlock" class="align-text-bottom"></span>
            정지 해제
          </button>
       </h5></li>
        </ul>


<button type="button" class="btn btn-outline-light btn-sm" id="modBtn">
            <span data-feather="edit-2" class="align-text-bottom"></span>
           수정
          </button>

      </div>
    </div>
  </div>
</div>

<button type="button" class="btn btn-dark btn-sm" onclick="history.back()">
            <span data-feather="arrow-left" class="align-text-bottom"></span>
            뒤로 가기
          </button>
      
    </main>
  </div>
</div>

<script src="bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
</body>
</html>