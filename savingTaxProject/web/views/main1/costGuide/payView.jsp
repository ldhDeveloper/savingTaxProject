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

.postTitle {
	font-family: mobius !important;
	font-size: 40px;
	text-align: center;
	color: #2a82a3;
}

.postthead {
	border-bottom: 4px solid #2a82a3;
	width: 100%;
}

.postth {
	font-size: 28pt;
	text-align: center;
	font-family: ssangmunDong !important;
}

.postthead1 {
	border-bottom: 1px solid #2a82a3;
	width: 100%;
}

.postth1 {
	padding-top: 1.3%;
	padding-bottom: 1.3%;
	font-size: 15pt;
	text-align: center;
	font-family: computer !important;
	color : red;
}

.plist {
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 12pt;
	text-align: center;
	color: #2a82a3;
	padding-top: 1.5%;
	padding-left: 1.5%;
	padding-bottom: 1.5%;
}

.pshow {
	width: 30%;
}

.pcontent {
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	text-align: center;
	color: dimgrey;
	padding-top: 1.5%;
	padding-left: 1.5%;
	padding-bottom: 1.5%;
}

.presult {
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	text-align: left;
	color: dimgrey;
	padding-top: 1.5%;
	padding-left: 14%;
	padding-bottom: 1.5%;
}

.presult2 {
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	text-align: left;
	color: dimgrey;
	padding-top: 1.5%;
	padding-left: 41%;
	padding-bottom: 1.5%;
}

.pdate {
	border: 1px solid #ddd;
	font-size: 10pt;
	font-family: Binggrae !important;
	text-align: center;
	padding : 2%;
	color: #2a82a3;
}

.payBtn {
	border: none;
	background-color: red;
	font-size: 13pt;
	color: white;
	width : 22%;
	height : 30px;
	border-radius: 3px;
	align : center !important;
	font-family: Binggrae;	
}

#agree{
	font-size: 10pt;
	font-family: computer !important;
	color: #2a82a3;
}
</style>

<script type="text/javascript">
$(function() {	
	$('#pdateid1').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid2').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid3').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid4').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid5').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid6').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid7').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid8').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid9').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid10').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid11').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid12').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});	
});
</script>

<script type="text/javascript">
$(function() {
    var x = 0; // 개월
    var y = <%=Integer.parseInt(request.getParameter("c"))%>;  // 단가
    
    $('#cost1').html(MoneySwap(y));
    $('#cost2').html(MoneySwap(y));
    $('#cost3').html(MoneySwap(y));
		
	function MoneySwap(result){
		var temp_str = String(result);
		for(var i = 0 , retValue = String() , stop = temp_str.length; i < stop ; i++){
			retValue = ((i%3) == 0) && i != 0 ? temp_str.charAt((stop - i) -1) + "," + retValue : temp_str.charAt((stop - i) -1) + retValue;				
		}
		return retValue + "원";
	}
    
    $("td[id^=pdateid]").click(function() {
       var temp = Number($(this).text().substring(0, $(this).text().length - 2));
       x = temp;
       
       var result = x * y;
       
       var buga = result * 0.1;
       
       var total = result + buga;

       $("#x").html(x + "개월");
       
       $('#result').html(MoneySwap1(result));
       $('#buga').html(MoneySwap2(buga));
       $('#total').html(MoneySwap3(total));
       
       	function MoneySwap1(result){
          	var temp_str = String(result);
          	for(var i = 0 , retValue = String() , stop = temp_str.length; i < stop ; i++){
             	retValue = ((i%3) == 0) && i != 0 ? temp_str.charAt((stop - i) -1) + "," + retValue : temp_str.charAt((stop - i) -1) + retValue;            
          	}
         	$("#result").html(retValue + "원");
       	}
       
       	function MoneySwap2(result){
          	var temp_str = String(result);
          	for(var i = 0 , retValue = String() , stop = temp_str.length; i < stop ; i++){
             	retValue = ((i%3) == 0) && i != 0 ? temp_str.charAt((stop - i) -1) + "," + retValue : temp_str.charAt((stop - i) -1) + retValue;            
          	}
         	$("#buga").html(retValue + "원");
       	}
       	
       	function MoneySwap3(result){
          	var temp_str = String(result);
          	for(var i = 0 , retValue = String() , stop = temp_str.length; i < stop ; i++){
             	retValue = ((i%3) == 0) && i != 0 ? temp_str.charAt((stop - i) -1) + "," + retValue : temp_str.charAt((stop - i) -1) + retValue;            
          	}
         	$("#total").html(retValue + "원");
       	}
	});   
    
    $("#calculate").click(function(){
       var total = $("#total").html();
       if(total != 0) {
          $(location).attr("href", "/jsmi/views/main1/costGuide/payInfoView.jsp?hap=" + total +"&month=" + x);   
       }
       
       else {
          alert("기간을 선택해 주세요!");
       }
    });
 });
</script>

</head>

<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->
	<div class="middle hidden-xs">


		<div class="middle font-family-md-1">
			<h3 align="center" class="postTitle">결제하기</h3>
		</div>

		<br> <br> <br>

		<h3></h3>
			<div class="tableStart">
				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="3" class="postth">신청내역</th>
						</tr>
					</thead>

					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="plist pshow">내역</td>

							<td class="plist">단가</td>

							<td class="plist">금액</td>
						</tr>

						<tr>
							<td class="pcontent pshow"><%= request.getParameter("data") %></td>

							<td class="pcontent" id="cost1"><%= Integer.parseInt(request.getParameter("c")) %></td>

							<td class="pcontent" id="cost2"><%= request.getParameter("c") %></td>
						</tr>
					</tbody>
				</table>
				
				<br><br><br>

				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="5" class="postth"><%= request.getParameter("data") %> 등록 기간</th>
						</tr>
					</thead>
				</table>
				
				<table class="tablemd">
					<thead class="postthead1">
						<tr>
							<th colspan="5" class="postth1">등록기간을 선택하세요.</th>
						</tr>
					</thead>
				</table>
					
					<br>
				<table class="tablemd">
					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="pdate" id="pdateid1" value="1">1개월</td>

							<td class="pdate" id="pdateid2" value="2">2개월</td>

							<td class="pdate" id="pdateid3" value="3">3개월</td>

							<td class="pdate" id="pdateid4" value="4">4개월</td>

							<td class="pdate" id="pdateid5" value="5">5개월</td>
							
							<td class="pdate" id="pdateid6" value="6">6개월</td>
							
							<td class="pdate" id="pdateid7" value="7">7개월</td>
							
							<td class="pdate" id="pdateid8" value="8">8개월</td>
							
							<td class="pdate" id="pdateid9" value="9">9개월</td>
							
							<td class="pdate" id="pdateid10" value="10">10개월</td>
							
							<td class="pdate" id="pdateid11" value="11">11개월</td>
							
							<td class="pdate" id="pdateid12" value="12">12개월</td>
						</tr>
					</tbody>
				</table>
				
				<br><br><br>
				
				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="5" class="postth">신청내역</th>
						</tr>
					</thead>

					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="plist pshow">내역</td>

							<td class="plist">단가</td>

							<td class="plist">기간</td>

							<td class="plist">금액</td>
						</tr>

						<tr>
							<td class="pcontent pshow">내역이 들어가야할 항목</td>

							<td class="pcontent" id="cost3"><%= Integer.parseInt(request.getParameter("c")) %></td>

							<td class="pcontent"><span id="x"></span></td>

							<td class="pcontent"><span id="result"></span></td>
						</tr>
						
						<tr>
							<td colspan="2" class="presult" id="additional">부가세</td>
							<td colspan="2" class="presult2"><span id="buga"></span></td>
						</tr>

						<tr>
							<td colspan="2" class="presult">합계</td>
							<td colspan="2" class="presult2"><span id="total" name="hap"></span></td>
					</tr>
					</tbody>
				</table>
			</div>

			<br><br>

			<div align="center">
				<h5 id="agree">※위와 같은 정보로 결제를 신청하시겠습니까?</h5>
				<input type="submit" class="payBtn" value="결제하기" id="calculate">
			</div>
			<br><br><br>
	</div>

	

	<!-- 모바일용 -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		

		<div class="middle font-family-md-1">
			<h3 align="center" class="postTitle">결제하기</h3>
		</div>

		<br> <br> <br>

		<h3></h3>
			<div class="tableStart">
				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="3" class="postth">신청내역</th>
						</tr>
					</thead>

					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="plist pshow">내역</td>

							<td class="plist">단가</td>

							<td class="plist">금액</td>
						</tr>

						<tr>
							<td class="pcontent pshow"><%= request.getParameter("data") %></td>

							<td class="pcontent" id="cost1"><%= Integer.parseInt(request.getParameter("c")) %></td>

							<td class="pcontent" id="cost2"><%= request.getParameter("c") %></td>
						</tr>
					</tbody>
				</table>
				
				<br><br><br>

				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="5" class="postth"><%= request.getParameter("data") %> 등록 기간</th>
						</tr>
					</thead>
				</table>
				
				<table class="tablemd">
					<thead class="postthead1">
						<tr>
							<th colspan="5" class="postth1">등록기간을 선택하세요.</th>
						</tr>
					</thead>
				</table>
					
					<br>
				<table class="tablemd">
					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="pdate" id="pdateid1" value="1">1개월</td>

							<td class="pdate" id="pdateid2" value="2">2개월</td>

							<td class="pdate" id="pdateid3" value="3">3개월</td>

							<td class="pdate" id="pdateid4" value="4">4개월</td>

							<td class="pdate" id="pdateid5" value="5">5개월</td>
							
							<td class="pdate" id="pdateid6" value="6">6개월</td>
							
							<td class="pdate" id="pdateid7" value="7">7개월</td>
							
							<td class="pdate" id="pdateid8" value="8">8개월</td>
							
							<td class="pdate" id="pdateid9" value="9">9개월</td>
							
							<td class="pdate" id="pdateid10" value="10">10개월</td>
							
							<td class="pdate" id="pdateid11" value="11">11개월</td>
							
							<td class="pdate" id="pdateid12" value="12">12개월</td>
						</tr>
					</tbody>
				</table>
				
				<br><br><br>
				
				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="5" class="postth">신청내역</th>
						</tr>
					</thead>

					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="plist pshow">내역</td>

							<td class="plist">단가</td>

							<td class="plist">기간</td>

							<td class="plist">금액</td>
						</tr>

						<tr>
							<td class="pcontent pshow">내역이 들어가야할 항목</td>

							<td class="pcontent" id="cost3"><%= Integer.parseInt(request.getParameter("c")) %></td>

							<td class="pcontent"><span id="x"></span></td>

							<td class="pcontent"><span id="result"></span></td>
						</tr>
						
						<tr>
							<td colspan="2" class="presult" id="additional">부가세</td>
							<td colspan="2" class="presult2"><span id="buga"></span></td>
						</tr>

						<tr>
							<td colspan="2" class="presult">합계</td>
							<td colspan="2" class="presult2"><span id="total" name="hap"></span></td>
					</tr>
					</tbody>
				</table>
			</div>

			<br><br>

			<div align="center">
				<h5 id="agree">※위와 같은 정보로 결제를 신청하시겠습니까?</h5>
				<input type="submit" class="payBtn" value="결제하기" id="calculate">
			</div>
			
			<br><br><br>
	</div>
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>