<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
 div {
 	resize: none;
 }

</style>

</head>

<body>

<!-- http://127.0.0.1:7660/jsmi/views/main1/CSBoard/taxTip/taxTip.jsp -->
<%@ include file="../../../common/menubar.jsp" %>
	
	<div class="container">
		<div class="row">
			<div class="col-xs-0 col-md-3">
				
			</div>
			<div class="col-xs-0 col-md-5">
				<h1>공지사항 작성</h1>
			</div>
			<div class="col-xs-0 col-md-4"></div>
		</div>
	</div>

	<br>
	<br>

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
								<td>첨부파일</td>
								<td></td>
							</tr>
							
							<tr class="info">
								<td>내       용</td>
								<td>
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


	<div class="row">
		<div class="col-xs-0 col-md-5"></div>

		<div class="col-xs-12 col-md-3"></div>
		
		<div class="col-xs-0 col-md-4">
			<input type="submit" class="btn btn-primary" value="등록">
			<input type="submit" class="btn btn-primary" value="취소">			
		</div>
	</div>



	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

<%@ include file="../../../common/footer.jsp" %>
</body>
</html>