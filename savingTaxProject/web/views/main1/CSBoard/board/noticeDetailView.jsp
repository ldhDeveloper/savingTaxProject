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
.replyContent{
	border-bottom : 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	padding : 2.5%;
	font-size: 7pt;
	white-space:normal;
}

.QreplyContent {
	font-family: computer !important;
	padding : 2.5%;
	font-size: 12pt;
	color: #2a82a3;
}
.inputmd {
background: -webkit-linear-gradient(#ffffff, #b0e0e6);
	background: -o-linear-gradient(#ffffff, #b0e0e6);
	background: -moz-linear-gradient(#ffffff, #b0e0e6);
	background: linear-gradient(#ffffff, #b0e0e6);
	border :none;
	border-radius: 1px;
	
	
	}


</style>

</head>

<body>
	

	<%@ include file="/views/common/main1/menubar.jsp"%>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->
	<div class="middle hidden-xs">


		<div class="middle font-family-md-1">
			<h3 align="center">
				<img src="/jsmi/images/main1/notice.png"><br>
				<br> 절세미인의 <label>공지사항</label>입니다.
			</h3>
			<h4 style="color: #a9a9a9" align="center">항상 고객의 편의를 위해 존재합니다.</h4>
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
					<tr>
						<td colspan="6" class="tdmd" id="ccontents">
							<h3></h3>
							<textarea class="textAreaCon"  name="contents" readonly><%=p.getPostContents() %></textarea><br> <br>
							<h3></h3>
						</td>
					</tr>
					<tr height = "20px"></tr>
					
				</tbody>
			</table>
		</div>
		<div  style = "text-align:right;margin-right:-50px;padding-right:0; ">
				<% if(loginUser != null) { if(loginUser.getPno() == p.getpNo()) { %>
					<button  class ="lastBtns" onclick="redact();">수정하기</button>
					<button class="lastBtns" onclick="deletePost();">삭제하기</button>
					<script type="text/javascript">
						function redact(){
						location.href= "/jsmi/postupdateview?postNo=<%=p.getPostNo()%>&page=<%=currentPage%>"
					}
						function deletePost(){
							location.href = "/jsmi/postdelete?postNo=<%=p.getPostNo()%>&page=<%=currentPage%>&boardNo=<%=p.getBoardNo()%>";
							}
					</script>
					<% }} %>
					 <a href="/jsmi/listview?page=<%=currentPage%>&boardNo=<%=p.getBoardNo() %>" 
					 class="lastBtns">&nbsp;&nbsp;이  전&nbsp;&nbsp;</a>
					&nbsp;&nbsp;&nbsp;&nbsp;	
		</div>
		<div>
			<form action = "/jsmi/insertcomment" method = "post">
			<table class="replyTable">				
					<tr>
						<td class="Qreply">
							댓글작성 &nbsp;&nbsp;&nbsp;&nbsp;|
							<label class="QreplyC">&nbsp;&nbsp;&nbsp;&nbsp; 
							<textarea maxlength="100" required class="textAreareply" name="postContents"></textarea></label>
						</td>
						
						<td class="OreplyBtn" >
							<%if(loginUser != null) {%>
							<input type = "hidden" name = "postRefNo" value = "<%=p.getPostNo()%>">
							<input type = "hidden" name = "boardNo" value = "<%=p.getBoardNo()%>">
							
							<input type = "hidden" name = "pNo" value = "<%=loginUser.getPno()%>">
							
							<input type = "hidden" name = "page" value="<%=currentPage%>">
							<input type = "submit" class="submitBtns" value="등록"> 
							<p></p>
							<input type="reset" class="cancleBtns" value="취소">
							<% } %>
						</td>
						<td class="OreplyBtn" style ="width:40%;">															
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
					<% if(commentList != null) { for(Post c : commentList) { %>
					<tr>						
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
					</tr>
						<% }} %>
			</table>
		</div>
		
		<br><br><br><br>
		
		<!-- mobile size view -->
		
		<br><br>	<br><br><br><br><br><br><br><br><br><br><br><br>

	</div>

	<!-- 모바일용 -->
	
	

	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="small">
				<h3 align="center">
				<img src="/jsmi/images/main1/notice.png"><br>
			</h3>
			<h4 style="color: #a9a9a9" align="center">항상 고객의 편의를 위해 존재합니다.</h4>
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
								<td><%=p.getPostName() %></td>
							</tr>
							
							<tr class="danger">
								<td>작 성 일</td>
								<td><%=p.getPostDate() %></td>
							</tr>
							
							<tr class="info">
								<td>작 성 자</td>
								<td><%=p.getpId() %></td>
							</tr>
							
							<tr class="warning">
								<td>조 회 수</td>
								<td><%=p.getReadCount() %></td>
							</tr>
							
							<tr class="success">
								<td colspan="2">
									<textarea class="form-control" rows="10" id="comment">
										<%=p.getPostContents() %>
									</textarea>
								</td>
							</tr>
							</tbody>
							</table>
							<form action = "/jsmi/insertcomment" method = "post">
							<table>
							<tr class="danger">
								<td style = "width : 80%">
									<textarea
									maxlength=40  
									 name = "postContents" class="form-control" rows="3" id="comment" placeholder="댓글을 작성하세요."></textarea>
								</td>
								<td>		<%if(loginUser != null) {%>
							<input type = "hidden" name = "postRefNo" value = "<%=p.getPostNo()%>">
							<input type = "hidden" name = "boardNo" value = "<%=p.getBoardNo()%>">
							<input type = "hidden" name = "pNo" value = "<%=loginUser.getPno()%>">
							<input type = "hidden" name = "page" value="<%=currentPage%>">
							<input type="submit" class="submitBtns" value="등록"> 
							<input type="reset" class="cancleBtns" value="취소">
							<% } %></td>
							</tr>										
					</table>
					</form>
					<div>
					<table class="replyTable">				
					<tr>
						<td colspan="2" class="QreplyContent">
							댓글내용 &nbsp;&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
										
						<% if(commentList != null) { for(Post c : commentList) { %>		
						<tr style = "background:#aaaaaa;" >				
						<td style="width:30%; font-size:12px;" class="Qreplying2">
							<B><%=c.getpId() %></B>
							<p></p> 
							<%=c.getPostDate() %>
						</td>
				<td  style = "width :70%;"class ="replyContent"
				>
				<p style="white-space:normal;line-break:pre;">				
				<%=c.getPostContents()%>
					</p></tr>
						<% }} %>
				
			</table>
					</div>
					
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