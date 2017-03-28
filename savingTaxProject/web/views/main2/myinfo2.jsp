<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
.middle {
	width: 1400px !important;
	background: white;
	max-height: 600px;
}

.top {
	width: 1400px !important;
	margin-bottom: -25px;
}

.frame {
	width:1400px;
	margin-left:auto;
	margin-rignt:auto;
	position:relative;
	left:-100px;
}

.section {
	width: 1200px;
	min-height: 600px;
	max-height:600px;
	background: white;
	position: relative;
	top: -600px;
	left: 200px;
	overflow:scroll;
	padding-left:20px;
	padding-right:20px;
}

.side {
	width: 200px;
	position:
	
}
.tabmenu {
	text-align:center;
	font-weight:bold;
}
.active {
	background:white;
	color:black;
}
.btngroup {
	float:right;
	position:relative;
	margin-top:-15px;
	margin-right:10px;
}
.
</style>
</head>
<body>
	<%@ include file="/views/common/main2back.jsp"%>
	<div class="middle top">
		<%@ include file="/views/common/fullbar.jsp"%>
	</div>

	<div class="middle frame">
		<div class="side">
			<%@ include file="/views/common/slidebar.jsp"%>
		</div>
		<div class="section">
		<br>
			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu active" href="/jsmi/views/main2/myinfo1.jsp">회원정보</a></li>
						<li><a class="tabmenu" href="/jsmi/views/main2/myinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu" href="/jsmi/views/main2/myinfo3.jsp">거래처 정보</a></li>
					</ul>
				</div>
			</div>
			<form action="">
				<table class="table table-condensed">
				    <tbody>
				      <tr>
				        <td class="col-md-2"><h5>상호</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				        <td class="col-md-2"><h5>대표자명</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>사업자 등록번호</h5></td>
				        <td class="col-md-4">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        </td>
				        <td class="col-md-2"><h5>공동사업자 여부</h5></td>
				        <td class="col-md-4">
				        	<div class="row">
				        		<div class="col-md-12">
						        	<div class="radio col-md-6">
		  								<label><input type="radio" name="optradio">예</label>
									</div>
									<div class="radio col-md-6" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">아니오</label>
									</div>
								</div>
							</div>
				        </td>
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>업태</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				        <td class="col-md-2"><h5>종목</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				         
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>사업장 전화번호</h5></td>
				        <td class="col-md-4">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        </td>
				        <td class="col-md-2"><h5>개업일</h5></td>
				        <td class="col-md-4">
				        	<input type="date" class="form-control">
				        </td>
				      </tr>
				      <tr>
				      	<td class="col-md-2"><h5>사업장 주소</h5></td>
				        <td class="col-md-2"><div style="padding-left:0px; padding-right:0px;">
				        <input type="text" class="form-control" id="postnum"></div>
				        					</td>	 
				        <td class="col-md-8" colspan="2"><input type=button class="btn btn-primary" value="우편번호검색" onclick="sample4_execDaumPostcode();"></td>
				      </tr>
				      <tr>
				        <td class="col-md-2">&nbsp;</td>
				        <td class="col-md-4"><input type="text" class="form-control" id="address1"></td>
				        <td class="col-md-6" colspan="2"><input type="text" class="form-control" id="address2"></td>	
				        
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>업종코드</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				        <td class="col-md-2"><h5>관할세무서</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
	   
				      </tr>
				       <tr>
				        <td class="col-md-2"><h5>과세유형</h5></td>
				        <td class="col-md-4">
				        	<div class="row">
				        		<div class="col-md-12">
						        	<div class="radio col-md-6">
		  								<label><input type="radio" name="optradio">일반과세자</label>
									</div>
									<div class="radio col-md-6" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">간이과세자</label>
									</div>
								</div>
							</div>
				        </td>
				        <td class="col-md-2"><h5>면세여부</h5></td>
				        <td class="col-md-4">
				        	<div class="row">
				        		<div class="col-md-12">
						        	<div class="radio col-md-4">
		  								<label><input type="radio" name="optradio">과세</label>
									</div>
									<div class="radio col-md-4" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">면세</label>
									</div>
									<div class="radio col-md-4" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">과세+면세</label>
									</div>
								</div>
							</div>
				        </td>
				      </tr>
				    </tbody>
				  </table>
			

			</form>
			<div class="btngroup">
				  <button class="btn btn-primary" type="submit" onclick="nextpage();">다음</button>
				  <button class="btn btn-danger" type="reset">취소</button>
				  </div>

		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2footer.jsp" %>
</body>
</html>