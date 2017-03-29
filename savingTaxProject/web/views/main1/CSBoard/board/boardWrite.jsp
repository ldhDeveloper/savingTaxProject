<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% int boardNo = Integer.parseInt(request.getParameter("boardNo"));
	int currentPage = Integer.parseInt(request.getParameter("page"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<link rel="stylesheet" href="/jsmi/css/common/grid.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.font-family-xs-1 {
	font-family: mobius !important;
}

.font-family-xs-2 {
	font-family: Binggrae !important;
}

.font-family-xs-3 {
	font-family: tenbyten !important;
}

.font-family-md-1 {
	font-family: mobius !important;
}

.font-family-md-2 {
	font-family: Binggrae !important;
}

.font-family-md-3 {
	font-family: tenbyten !important;
}

/* *** 모바일 style *** */
.container-fluid, #th {
	text-align: center;
}

#xstable {
	table-layout: fixed;
	font-size: 7pt;
}

#stext {
	width: 70%;
	height: 25px;
	font-size: 10pt;
}

/* *** 컴퓨터 style *** */
.middle {
	font-family: mobius !important;
}

.table {
	table-layout: fixed;
}

.tablemd {
	width: 100%;
	align: center;
	text-align: left;
}

#h3title{
	color: #2a82a3;
}

#clist{
	background: -webkit-linear-gradient(left, #ffffff, #b0e0e6);
	background: -o-linear-gradient(left, #ffffff, #b0e0e6);
	background: -moz-linear-gradient(left, #ffffff, #b0e0e6);
	background: linear-gradient(left, #ffffff, #b0e0e6);
	border: solid 1px #2a82a3;
	height: 40px;
	border-radius: 4px;
	padding-top : 0.5%;
	font-size: 14pt;
	box-shadow: 2px 2px 6px #2a82a3;
}

#ctitle {
	font-family: computer !important;
	color : #2a82a3;
	font-size: 15px;
}

#ctitlec {
	font-family: NotoSansCJKkr-Ligth !important;
	color : #2a82a3;
	font-size: 13px;
}

#cdate {
	font-family: computer !important;
	color : #2a82a3;
	font-size: 15px;
}

#cdatec {
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13px;
}

.tdmd{
	padding: 2%;
	border-bottom: 1px solid #ddd;
	width: 100%;
	color: dimgray;
}

#ccontents {
	text-align: center;
	align: center;
}

.Qtitle {
	font-family: computer !important;
	border-bottom : 1px solid #ddd;
	padding : 2.5%;
	font-size: 12pt;
	color: #2a82a3;
}

.Qlist {			
	border-bottom : 1px solid #ddd;
	padding : 1.5%;	
	text-align: center;
} 

.Qright {
	border-right: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	text-align: center;
	font-size: 10pt;
}

.Qlistt {
	border-right: 1px solid #ddd;
	font-family: computer !important;
	font-size: 12pt;
	color: #2a82a3;
}

.Qreply {
	border-bottom : 1px solid #ddd;
	font-family: computer !important;
	border-top : 1px solid #ddd;
	padding : 2.5%;
	font-size: 12pt;
	heigth: 10%;
	color: #2a82a3;
}

.QreplyC {
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	color: black;
}

#submitBtn2 {
	border: none;
	border-radius: 3px;
	border-color: #d58512;
	color: white;
	width: 5%;
    height: 25px;
	font-family: Binggrae !important;
	background-color : #ec971f;
}

#submitBtn1 {
	border: none;
	border-radius: 3px;
	border-color: #2a82a3;
	color: white;
	width: 5%;
    height: 25px;
	font-family: Binggrae !important;
	background-color : #2a82a3;	
}

.Qcount{
	font-family: NotoSansCJKkr-Ligth !important;
	text-align: center;
	font-size: 10pt;
}

.tbody {
  background:white;
   width:800px;
   margin-left:auto;
   margin-right:auto;

}

.titlebar{
	background: -webkit-linear-gradient(bottom, #ffffff, #b0e0e6);
	background: -o-linear-gradient(bottom, #ffffff, #b0e0e6);
	background: -moz-linear-gradient(bottom, #ffffff, #b0e0e6);
	background: linear-gradient(bottom, #ffffff, #b0e0e6);
}
</style>

</head>

<body>
	<!-- /jsmi/views/main1/CSBoard/taxNews/taxNews.jsp -->

	<%@ include file="/views/common/main1/menubar.jsp" %>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->
	
	
	
	<div class="tbody">


		<div class=" font-family-md-1">
			<h3 align="center">
				<img src="/jsmi/images/main1/notice.png"><br><br>
				절세미인 관련 <label id="h3title">공지사항</label> 작성
			</h3>
			<h4 style="color: #a9a9a9" align="center">언제나 정확하게
				
			</h4>
		</div>
		<br> <br> <br>
		<!-- <div id="clist">
			<label id="ctitle">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				제목
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
			</label> 
			<label id=ctitlec>&nbsp;&nbsp;
				[절세미인] 여기엔 제목값이 입력되는 곳 입니다.</label>
		</div> -->
		<h3></h3>
		<form action ="/jsmi/insertpost" method = "post">
		<div class="tableStart">
			<table class="tablemd">
				<tbody class="tbodymd font-family-md-3">
					
					<tr class = "titlebar">
						<td colspan = "2" class="Qlist Qright Qlistt">
								제목 &nbsp;&nbsp;&nbsp;&nbsp;|
							<input type = "text" name = "title" style = "border:none;">
						</td>
						
						<td class="Qlistt Qright">
							작성자
						</td>
						<td>
						<input class="Qright" readonly style= "border:none;" value = "" name = "pno">
						</td>
					</tr>
					<tr>
					<td colspan  = "8"><textarea rows= "40" name = "postContents" style="resize:none;width:100%"></textarea></td> 
					</tr>
				</tbody>
			</table>
		</div>
		<br>
			<div align="right">
				<input type="hidden" name = "boardNo" value="<%=boardNo %>">
				<input type="hidden" name = "page" value="<%=currentPage %>">
				<input type="submit" id="submitBtn1" value="등록">&nbsp;&nbsp;
				<input type="reset" id="submitBtn2" value="취소">&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</form>
		<script type="text/javascript">
		</script>
	</div>



	<!-- 모바일용 -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="small">
			<h2 align="center" class="font-family-xs-1">세무 Tips</h2>
		</div>

		<br>

		<form action=""></form>

		<div class="row">
			<div class="col-xs-2"></div>

			<div class="col-xs-8">
				<input type="text" id="stext" name="search"
					placeholder="검색할 제목을 입력하세요.">
				<!-- <input type="submit" class="btn btn-primary" id="searchBt" value="검색"> -->
				<!-- <input class="btn btn-primary input-xs" value="검색"> -->
				<button class="btn btn-primary btn-xs">검색</button>
			</div>

			<div class="col-xs-2"></div>
		</div>

		<br> <br>


	<div class="container">
		<div class="row">
			<div class="col-xs-0 col-md-2"></div>

			<div class="col-xs-12 col-md-8">
				<div class="table-responsive">
					<table class="table table-bordered">
					
						<tbody>
							<tr class="success">
								<td>제      목</td>
								<td></td>
							</tr>
							
							<tr class="danger">
								<td>작 성 자</td>
								<td></td>
							</tr>
							
							<tr class="info">
								<td colspan="2">
									<textarea class="form-control" rows="10" id="comment"></textarea>
								</td>
							</tr>														
						</tbody>
					</table>
				</div>
			</div>

			<div class="col-xs-0 col-md-2"></div>
		</div>
	</div>

		<br> <br> <br> <br> <br> <br> <br>
	</div>
<%@ include file="/views/common/main1/footer.jsp" %>
</body>
</html>