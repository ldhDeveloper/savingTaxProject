<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import  = "board.model.vo.Post, java.util.List"%>
<% Post p = (Post)request.getAttribute("post"); 
	int currentPage = ((Integer)request.getAttribute("page")).intValue();
	
	List<Post> commentList = (List)request.getAttribute("commentList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<link rel="stylesheet" href="/css/common/grid.css" type="text/css">
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
	background: -webkit-linear-gradient(#ffffff, #b0e0e6);
	background: -o-linear-gradient(#ffffff, #b0e0e6);
	background: -moz-linear-gradient(#ffffff, #b0e0e6);
	background: linear-gradient(#ffffff, #b0e0e6);
	border: solid 1px #2a82a3;
	height: 40px;
	width: 1007px;
	/* border-radius: 4px; */
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
	/* color : #2a82a3; */
	color : #696969;
	font-size: 13px;
}

#cdate {
	font-family: computer !important;
	color : #2a82a3;
	font-size: 15px;
	width: 15%;
}

#cwriter {
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

.thmd {
	background: -webkit-linear-gradient(#ffffff, #b0e0e6);
	background: -o-linear-gradient(#ffffff, #b0e0e6);
	background: -moz-linear-gradient(#ffffff, #b0e0e6);
	background: linear-gradient(#ffffff, #b0e0e6);
	border : 1px solid #2a82a3;
	box-shadow: 2px 2px 6px #2a82a3;
	height: 10%;
}

#thmd {
	border-collapse: collapse;
	border : 1px solid #ddd;
	text-align: center;
}

#thth {
	font-family: computer !important;
	color : #2a82a3;
	text-align: center;
	padding-top: 1%;
	padding-left: 1%;
	padding-bottom: 0.8%;
	border-right : 1px solid #ddd;
}

#thc {
	font-family: NotoSansCJKkr-Ligth !important;
	color : #696969;
	text-align: center;
	font-size:10pt;
	padding-top: 1%;
	padding-left: 1%;
	padding-bottom: 0.8%;
	border-right : 1px solid #ddd;
	
}

#thcS {
	font-family: NotoSansCJKkr-Ligth !important;
	color : #696969;
	text-align: center;
	font-size:12pt;
	padding-top: 1%;
	padding-left: 1%;
	padding-bottom: 0.8%;
	border-right : 1px solid #2a82a3;
}

#ccontents {
	text-align: center;
	align: center;
}

table {
	width: 100%;
}

.tdmini1 {
	border-top : 1px solid #2a82a3;
	border-bottom : 1px solid #ddd;
	padding-top : 1.5%;
	padding-left : 2%;
}

.tablemini{
	width: 100%;
	font-family: computer !important;
}

.tdmini2 {
	border-bottom : 1px solid #2a82a3;
	padding-top : 1.5%;
	padding-left : 2%;
	
	
}

#wwrite{
	color : #2a82a3;
}

#tw {
	font-family: NotoSansCJKkr-Ligth !important;
	font-size : 9.5pt;
	color : #696969;
}

.textAreaCon{
	font-family: NotoSansCJKkr-Ligth !important;
	border : none;
	max-width: 970px;
	min-width: 970px;
	max-height: 400px;
	min-height: 400px;
	font-size : 15pt;
}

.Qreply {
	border-bottom : 1px solid #ddd;
	font-family: computer !important;
	padding : 2.5%;
	font-size: 12pt;
	color: #2a82a3;
}

.QreplyC {
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	color: black;
}

.textAreareply{
	font-family: NotoSansCJKkr-Ligth !important;
	/* border : none; */
	max-width: 850px;
	min-width: 850px;
	max-height: 100px;
	min-height: 100px;
	font-size : 15pt;
}

.submitBtns {
	border: none;
	border-radius: 3px;
	background-color: #2a82a3;
	color: white;
	font-family: Binggrae !important;
		
}

.cancleBtns {
	border: none;
	border-radius: 3px;
	background-color: darkorange;
	color: white;
	font-family: Binggrae !important;
}

.OreplyBtn {
	border-bottom : 1px solid #ddd;
}

.QreplyComent {
	border-bottom : 1px solid #ddd;
	font-family: computer !important;
	padding-top: 1%;
	padding-left : 2.5%;
	font-size: 12pt;
	color: #2a82a3;
	height: 200px;
}

.lastBtns {
	border: none;
	border-radius: 3px;
	background-color: darkorange;
	color: white;
	font-family: Binggrae !important;
}

.Qreplying {
	border-bottom : 1px solid #ddd;
	font-family: computer !important;
	padding : 2.5%;
	font-size: 12pt;
	color: #2a82a3;
}

.Qreplying2 {
	border-bottom : 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	padding : 2.5%;
	font-size: 12pt;
}

.QreplyContent {
	font-family: computer !important;
	padding : 2.5%;
	font-size: 12pt;
	color: #2a82a3;
}


</style>

</head>

<body>
	<!-- /jsmi/views/main1/CSBoard/taxNews/taxNews.jsp -->

	<%@ include file="/views/common/main1/menubar.jsp"%>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->
	<div class="middle hidden-xs">


		<div class="middle font-family-md-1">
			<h3 align="center">
				<img src="/jsmi/images/QnA.png"><br><br>
				절세미인과 관련된 <label id="h3title">빠르고 정확한 소식을 전해드립니다.</label>
			</h3>
			<h4 style="color: #a9a9a9" align="center">새로운 소식을 보다 빠르고 정확하게
				확인하실 수 있습니다.
			</h4>
		</div>

		<br> <br> <br>
		
		
		<div id="clist">
			<label id="ctitle">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				제목
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
			</label> 
			<label id=ctitlec>&nbsp;&nbsp;
				<%= p.getPostName() %></label>
		</div>
		
		
		<h3></h3>

		<div class="tableStart">
			<table>
				<thead class="theadmd">
					<tr class="thmd">
						<th id="thth">작성일</th>
						<th id="thc"><%=p.getPostDate()%></th>
						<th id="thth">작성자</th>
						<th id="thc"><%=p.getpId() %></th>
						<th id="thth">조회수</th>
						<th id="thcS"><%=p.getReadCount()%></th>
					</tr>
				</thead>

				<tbody class="tablemd tbodymd font-family-md-3">
					
					<!-- DB연동시 삭제 할 부분! 보여주려고 여기에 해 놓은 것임! 오해금지! 내용이 들어갈 곳 -->
					<tr>
						<td colspan="6" class="tdmd" id="ccontents">
							<h3></h3>
							<textarea class="textAreaCon" value="" name="contents" readonly><%=p.getPostContents() %></textarea><br> <br>
							<h3></h3>
						</td>
					</tr>
					
					
				</tbody>
			</table>
		</div>
		
		<div>
			<form action = "/jsmi/insertcomment" method = "post">
			<table class="replyTable">				
					<tr>
						<td class="Qreply">
							댓글작성 &nbsp;&nbsp;&nbsp;&nbsp;|
							<label class="QreplyC">&nbsp;&nbsp;&nbsp;&nbsp; <textarea class="textAreareply" name="postContents"></textarea></label>
						</td>
						
						<td class="OreplyBtn">
							
							<input type = "hidden" name = "postRefNo" value = "<%=p.getPostNo()%>">
							<input type = "hidden" name = "boardNo" value = "<%=p.getBoardNo()%>">
							<%if(loginUser != null) {%>
							<input type = "hidden" name = "pNo" value = "<%=loginUser.getPno()%>">
							<% } %>
							<input type = "hidden" name = "page" value="<%=currentPage%>">
							<input type="submit" class="submitBtns" value="등록">
						</td>
						
						<td class="OreplyBtn">															
							<input type="submit" class="cancleBtns" value="취소">
						</td>
					</tr>
			</table>
			</form>
		</div>
		
		<div>					
			<table class="replyTable">				
					<tr>
						<td colspan="4" class="QreplyContent">
							댓글내용 &nbsp;&nbsp;&nbsp;&nbsp;|
						</td>
					</tr>
					
					<tr>						
						<% if(commentList != null) { for(Post c : commentList) { %>
						<td class="Qreplying">
							작성자						
						</td>
						
						<td class="Qreplying2">
							<%=c.getpId() %>
						</td>
						
						<td class="Qreplying">
							작성일							
						</td>
						
						<td class="Qreplying2">
							<%=c.getPostDate() %>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" class="Qreplying">
							작성내용						
						</td>
						
						<td colspan="2" class="Qreplying2">
							<%=c.getPostContents() %>
						</td>
						<% }} %>
					</tr>
			</table>
		</div>
		
		<br>
		
		<div>
			<table>
				<tr>
				<td align="right">
					<% if(loginUser != null) { if(loginUser.getPno() == p.getpNo()) { %>
		
					<button class="updateBtn" onclick="redact();">수정하기</button>
				
					<script type="text/javascript">
						function redact(){
						location.href= "/jsmi/postupdateview?postNo=<%=p.getPostNo()%>&page=<%=currentPage%>"
					}
					</script>
			
					<% }} %>
				</td>

				<td align="right" >
					<a href="/jsmi/listview?page=<%=currentPage%>&boardNo=<%=p.getBoardNo() %>" class="lastBtns">이전</a>	
				</td>
				</tr>
			</table>					
		</div>
		
		<br><br>
		
		<div class="tableStart2">
			<table class="tablemini">
				<tr>
					<td class="tdmini1">
						<label id="wwrite">이전글 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</label>
						<label id="tw"><!-- 이전글 제목을 입력하는 공간입니다. -->이전글 제목을 입력하는 공간입니다.</label>
					<td>
				</tr>
				
				<tr>
					<td class="tdmini2">
						<label id="wwrite">다음글 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</label>
						<label id="tw"><!-- 다음글 제목을 입력하는 공간입니다. -->다음글 제목을 입력하는 공간입니다.</label> 
					<td>
				</tr>
			</table>
		</div>
		
		<br><br>		

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
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>