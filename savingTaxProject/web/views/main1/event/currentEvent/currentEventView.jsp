<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  import = "board.model.vo.Post, java.util.*"%>
	
	<% 
	List<Post> plist = (List<Post>)request.getAttribute("plist"); 
	 int listCount = ((Integer)request.getAttribute("listCount")).intValue();
	int currentPage = ((Integer)request.getAttribute("currentPage")).intValue();
	int maxPage = ((Integer)request.getAttribute("maxPage")).intValue();
	int startPage = ((Integer)request.getAttribute("startPage")).intValue();
	int endPage = ((Integer)request.getAttribute("endPage")).intValue();
	int boardNo = ((Integer)request.getAttribute("boardNo")).intValue(); 
	%>
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
<title>현재 진행중인 이벤트</title>
<style type="text/css">
.middle {
	align: center;
}

.thumbnail {
	width: 300px;
	margin-left: 15px;;
	display: inline-block;
}

h3 {
	font-family: ssangmundong !important;
}

p {
	margin: 0px !important;
}

a.thumbnail {
	width: 280px;
	height: 180px;
}

.imgsize{
    width: 250px;
    height: 120px;
}

</style>
</head>
<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	<br>
	<br>
	<div class="middle hidden-xs">
		<h3 align="center">진행중인 이벤트</h3>
		<br> <br>
	</div>
	<div class="middle hidden-xs">
		<%if(plist != null){ for(Post p : plist){ %>
		<div class="thumbnail" style="display: inline-block">
			<a href="/jsmi/views/main1/event/currentEvent/eventDetail.jsp?src=<%=p.getfName()%>">
			<img src="/jsmi/images/main1/<%=p.getfName()%>">
				<div class="caption">
					<p>이벤트기간 : <%=p.getPostContents() %></p>
				</div> </a>
		</div>
		<% }} %>
		
		</div>
	<br>
	<br>
	<br>


	<!-- Moblie  -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="row">
			<div class="col-xs-4">
				<a href="/jsmi/views/main1/event/currentEvent/eventDetail.jsp"
					class="thumbnail"> <img src="/jsmi/images/main1/eventmn2.png"
					class="img-responsive imgsize">
					<div class="caption">
						<p style="font-size: 12px; text-align: center;">이벤트기간 :
							2017.03.01 ~ 2017~03.31</p>
					</div></a>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn6.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 :
								2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn3.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 :
								2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn4.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 :
								2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn5.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p>이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail caption"> <img src="/jsmi/images/main1/eventmn1.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

	</div>

	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>