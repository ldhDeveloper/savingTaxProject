<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Perfect Partners for Your Saving-Tax</title>
<style type="text/css">


	

#xs-logout {
   position:fixed;
   left:85%;
   margin-top:80px;
   z-index:1;
}

.xstd {
   text-align:center;
   background:#3f3f3f;
   border:3px solid #222;
   border-radius:1em;
   width:50%
}
.xstd > a {
   text-decoration:none;
   color:white;
   padding:1.2em;
   display:block;
   height:4em;
}
element.style {
}
    color: #ffffff;
    text-decoration: none;
}
.mobile{
   background:#8f8f8f;
   margin-top:0px;
}

.xstd:hover {
   background:orange;
}


.middle {
   background:white;
   width:970px;
   margin-left:auto;
   margin-right:auto;
   
}
.middle table {}
   background:white;
}

.middle table td {
   padding-top:0px;
   padding-bottom:0px;
}

.full-bar {
   width:100%;
   height:40px;
   background:#2a82a3;
}

.menu ul {
   list-style-type:none;
}

.menu ul li {
   width:155px;
   height:40px;
   float:left;
   position:relative;
   padding:auto;
   margin:0px;
   font-family:Binggrae; 
}

.menu ul li a {
   display:block;
   position:relative;
   z-index:1000;
   text-decoration:none;
   text-align:center;
   color:white;
   height:40px;
   line-height:40px;
	
   
   
}

.menu ul li a:hover {
   background:orange;
}

.menu ul li ul {
	position:relative;
	left:-40px;
}
.menu ul li ul a {
   opacity:0;
   background:#2a82a3;
   position:relative;
 
}

.menu ul li:hover ul a{
   opacity:3;
}
</style>
</head>

<body width="100%">

   <!-- 데스트탑(lg) 최적화 -->

   <!--  로고 + 로그인버튼 -->

   <div class="middle hidden-xs" align="center">
      <table width="970px">
         <tr><td><img src="/jsmi/images/menubar/logo.png" class="" id="logo" width="90%" height="90%"><td>
         <td width="70"><button id="logout" class="btn btn-warning btn-sm"
               onclick="location.href='/jsmi/index.jsp'">로그아웃</button>
         <td></tr>
      </table>
   </div>
   
   <div class="full-bar hidden-xs">
      <div class="middle menu">
         
            <ul height="40" >
            	<li><a href="/jsmi/main.jsp">메인으로</a></li>
               <li>
                     <a href='/jsmi/views/main1/introduce.jsp'>절세미인소개</a>
                     <ul class="sub-menu">
                           <li><a href='/jsmi/views/main1/introduce.jsp'>절세미인이란?</a></li>
                           <li><a href="#">시스템 소개</a></li>
                           <li><a href="#">회사 소개</a></li>
                           <li><a href="#">찾아오시는 길</a></li>
                    </ul>   
               </li>
               <li>
               		<a href="#">주요기능안내</a>
               		<ul class="sub-menu">
                           <li><a href="#">주요 기능 안내</a></li>
                           <li><a href="#">절세미인의 장점</a></li>
                    </ul>
               </li>
               <li>
              		 <a href='/jsmi/views/main1/event/currentEvent/currentEventView.jsp'>이벤트</a>
              		 <ul class="sub-menu">
                           <li><a href='/jsmi/views/main1/event/currentEvent/currentEventView.jsp'>진행중인 이벤트</a></li>
                           <li><a href='/jsmi/views/main1/event/postEvent/postEventView.jsp'>지난 이벤트</a></li>
                     </ul>
               </li>
               <li><a href="#">비용안내</a></li>
               <li>
               		<a href="#">고객센터</a>
               		<ul class="sub-menu">
                           <li><a href="/jsmi/views/board/boardListView.jsp">공지사항</a></li>
                           <li><a href="#">세금 소식</a></li>
                           <li><a href="#">세무팁</a></li>
                           <li><a href="#">자주 묻는 질문</a></li>
                           <li><a href="#">궁금한 것이 있어요</a></li>
                           <li><a href="#">서식 자료실</a></li>
                    </ul>
               
               </li>
            </ul>
         
      </div>
   </div>   
   
   

   <!-- 모바일(xs) 최적화 -->
   
   <!--  모바일 상단메뉴 -->
   <div class="container-fluid navbar-fixed-top" id="bar">
      <div class="row">
         <nav
            class="navbar navbar-inverse hidden-md hidden-sm hidden-lg">
            <div class="container-fluid navbar-header">
               <div class="col-xs-12 col-md-8">

                  <button type="button" class="navbar-toggle" data-toggle="collapse"
                     data-target="#myNavbar">
                     <span class="icon-bar"></span><span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                  </button>


                  <br><br><br>
                  <div class="collapse navbar-collapse navbar-right" id="myNavbar">
                     <ul class="nav navbar-nav navbar-static-top">

                        <li class="dropdown">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                              <img src="/jsmi/images/menubar/mb1.png" class="img-responsive"
                              style="width: 30%; height: 30%;">
                           </a>
                           <ul class="mobile dropdown-menu">
                              <li>
                                 <table width="100%">
                                    <tr><td class="xstd"><a href='/jsmi/views/main1/introduce.jsp'>절세미인이란?</a></td><td class="xstd"><a href="#">시스템 소개</a></td></tr>
                                    <tr><td class="xstd"><a href="#">회사 소개</a></td><td class="xstd"><a href="#">찾아오시는 길</a></td></tr>
                                 </table>
                              </li>
                           </ul>
                        </li>
                        <li class="dropdown">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                              <img src="/jsmi/images/menubar/mb2.png"
                              class="img-responsive" style="width: 30%; height: 30%;">
                           </a>
                           <ul class="mobile dropdown-menu">
                              <li>
                                 <table width="100%">
                                    <tr><td class="xstd"><a href="#">주요 기능 안내</a></td><td class="xstd"><a href="#">절세미인의 장점</a></td></tr>
                                 </table>
                              </li>
                           </ul>
                        </li>
                        <li class="dropdown">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                              <img src="/jsmi/images/menubar/mb3.png"
                              class="img-responsive" style="width: 30%; height: 30%;">
                           </a>
                           <ul class="mobile dropdown-menu">
                              <li>
                                 <table width="100%">
                                    <tr>
                                    	<td class="xstd">
                                    		<a href='/jsmi/views/main1/event/currentEvent/currentEventView.jsp'>진행중인 이벤트</a>
                                    	</td>
                                    	<td class="xstd">
                                    		<a href='/jsmi/views/main1/event/postEvent/postEventView.jsp'>지난 이벤트</a>
                                    	</td>
                                    </tr>
                                 </table>
                              </li>
                           </ul>
                        </li>
                        <li>
                           <a href="#">
                              <img src="/jsmi/images/menubar/mb4.png"
                              class="img-responsive" style="width: 30%; height: 30%;">
                           </a>
                        </li>
                        <li class="dropdown">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                              <img src="/jsmi/images/menubar/mb5.png"
                              class="img-responsive" style="width: 30%; height: 30%;">
                           </a>
                           <ul class="mobile dropdown-menu">
                              <li>
                                 <table width="100%">
                                    <tr><td class="xstd"><a href="#">공지사항</a></td><td class="xstd"><a href="#">세금소식</a></td></tr>
                                    <tr><td class="xstd"><a href="#">세무팁</a></td><td class="xstd"><a href="#">자주 묻는 질문</a></td></tr>
                                    <tr><td class="xstd"><a href="#">궁금한 것이 있어요</a></td><td class="xstd"><a href="#">서식 자료실</a></td></tr>
                                 </table>
                              </li>
                           </ul>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </nav>
      </div>
   </div>

   <!--  로고 + 로그인버튼 -->
   <div class="container-fluid hidden-sm hidden-md hidden-lg" id="bar">
      <div class="row">
         <div class="col-xs-0"></div>
         <div class="col-xs-8" style="background: white;">
            <img src="/jsmi/images/logo4.png" class="img-responsive navbar-fixed-top" id="logo" width="50%" >

         </div>
         <div class="col-xs-2"></div>
         <div class="col-xs-1">
            <button class="btn btn-warning btn-xs navbar-fixed-top" id="xs-logout"
               onclick="location.href='/jsmi/index.jsp'">로그아웃</button>
         </div>
         <div class="col-xs-1"></div>
      </div>
   </div>

</body>
</html>