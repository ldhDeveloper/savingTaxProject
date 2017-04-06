<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*,diary.model.vo.Diary, java.util.*"%>
<%
	Date day = new GregorianCalendar().getTime();
	int quarter = 0;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript " src="/jsmi/js/main2/bootstrap.min.js"></script>
<script type="text/javascript" src="/jsmi/js/main2/zipcode.js"></script>

<title>vatDetail</title>
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
	width: 1400px;
	margin-left: auto;
	margin-rignt: auto;
	position: relative;
	left: -100px;
}

.section {
	width: 1200px;
	min-height: 600px;
	max-height: 600px;
	background: white;
	position: relative;
	top: -600px;
	left: 200px;
	overflow: scroll;
	padding-left: 20px;
	padding-right: 20px;
}

.side {
	width: 200px;
	position:
}

.tabmenu {
	background: #101020;
	color: white;
	text-align: center;
	font-weight: bold;
}

.lactive {
	background: white;
	color: black;
}

.btngroup {
	float: right;
	position: relative;
	margin-top: -15px;
	margin-right: 10px;
}

input {
	border: none;
	background: cyan;
	border-radius: 4px;
}
label {
font-size : 4em;
}
</style>
</head>
<body style="padding-top: 0px">
	<%@ include file="/views/common/main2/main2back.jsp"%>
	<div class="middle top" style="margin-top: 50px">
		<%@ include file="/views/common/main2/fullbar.jsp"%>
	</div>

	<div class="middle frame">
		<div class="side">
			<%@ include file="/views/common/main2/slidebar.jsp"%>
		</div>
		<div class="section">
			<br>
			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu"
							href="/jsmi/views/main2/tax/vatDetail.jsp">부가가치세</a></li>
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/tax/generalIncomeTax/generalIncomeTax.jsp">종합소득세
						</a></li>
					</ul>
				</div>
			</div>
			<div>
				
			</div>
			<table class="table table-condensed">
				<tr>
					<td>&nbsp; &nbsp;&nbsp; <span style="color: blue;"><%=loginUser.getPname()%></span>
						님의 부가가치세 계산 창입니다.
					</td>
					<td>&nbsp;  </td>
					<td>&nbsp;</td>
					<td>다른분기 계산하기</td>
				</tr>
				<tr style="text-align: center;">
					<td > <label id=quarter></label> <label id="year"><%=day.getYear() + 1900%>
					</label><label>년</label><%
					if (loginUser.getTaxType().equals("일반과세자")) {
						if (day.getMonth() < 6)
							quarter = 1;
						else
							quarter = 2;					
				%>
					<label id="quarter"><%=quarter%></label><label>반기</label></td>
					<%} %>
					
					<td colspan="3"><img src="/jsmi//images/main2/down.png"
						onclick="myear();"> <label id="searchY"><%=day.getYear() + 1900%>
					</label><label>년</label> <img src="/jsmi//images/main2/up.png" onclick="pyear();">
						<%if(loginUser.getTaxType().equals("일반과세자")){ %>
						<label id=searchQ>상</label><label>반기</label>
						 <img src="/jsmi//images/main2/up2.png" onclick="firstHalf();">
						 <img src="/jsmi//images/main2/down2.png" onclick="secondHalf();">
						<%} %>
					</td>
				</tr>
				<tr>
					<td>조회  버튼 클릭시 장부에 세금거래내역으로 저장됩니다.</td>
					<td>&nbsp;</td><td>&nbsp;</td><td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick ="vatLoad();">조회</button></td>
				</tr>
				</table>
				<fieldset>
				<legend>조회되는 항목</legend>
			<%if(loginUser.getTaxType().equals("일반과세자")){ %>
			<table class="table table-condensed">
				<tr>
					<td colspan="2">매출 세액(+)</td>
				</tr>
				<tr>
					<td colspan="2">세금계산서(+)</td>
					<td><input name="out1" type="number" readonly> 원</td>
					<td>세액 : <input name="outvat1" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-신용카드 매출전표(+)</td>
					<td><input name="out2" type="number" readonly> 원</td>
					<td>세액 : <input name="outvat2" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-기타분(+)</td>
					<td><input name="out3" type="number" readonly> 원</td>
					<td>세액 : <input name="outvat3" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-합계(+)</td>
					<td><input name="totalout" type="number" readonly> 원</td>
					<td>세액 : <input name="totaloutvat" type="number" readonly>
						원
					</td>
				</tr>
				<tr></tr>
				<tr>
					<td colspan="2">매입 세액(-)</td>
				</tr>
				<tr>
					<td colspan="2">-세금계산서(-)</td>
					<td><input name="in1" type="number" readonly> 원</td>
					<td>세액 : <input name="invat1" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
				<tr>
					<td colspan="2">매입 세액 합계</td>
					<td><input name="totalin" type="number" readonly>원</td>
					<td>세액 :<input name="totalinvat" type="number" readonly> 원</td>
				</tr>
				<tr>
					<td colspan="2">-기타 공제 세액(신용카드발행분)(-)</td>
					<td>&nbsp;</td>
					<td>세액 :<input name="out2other" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-세금계산서등 수취세액 공제</td>
						<td>세액 :<input name="simple" placeholder = "간이과세자만 해당합니다."  type="number" >
						원
					</td>
				</tr>
				
			</table>
			</fieldset>
			<fieldset>
			<legend>총 계</legend>
			<table class = "table table-condensed">
			<tr>
					<td colspan="2">납부할 총 부가가치세액</td>
					<td><input name="total" type="number" readonly> 원</td>
					<td>세액 :<input name="totalvat" type="number" readonly>
						원
					</td>
				</tr>
			</table>
			<%}else{ %>
			<table class="table table-condensed">
				<tr>
					<td colspan="2">매출 세액(+)</td>
				</tr>
				<tr>
					<td colspan="2">전기 가스 중기 및 수도사업</td>
					<td><input name="out1" type="number" readonly> 원</td>
					<td>세액 : <input name="outvat1" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">소매, 재생용자료 수집판매, 음식점업</td>
					<td><input name="out2" type="number" readonly> 원</td>
					<td>세액 : <input name="outvat2" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">제조, 농, 임, 어업, 숙박, 운수 및 통신업</td>
					<td><input name="out3" type="number" readonly> 원</td>
					<td>세액 : <input name="outvat3" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">건설, 부동산, 그 밖의 서비스업</td>
					<td><input name="out4" type="number" readonly> 원</td>
					<td>세액 : <input name="outvat4" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-계(+)</td>
					<td><input name="totalout" type="number" readonly> 원</td>
					<td>세액 : <input name="totaloutvat" type="number" readonly>
						원
					</td>
				</tr>
				<tr></tr>
				<tr>
					<td colspan="2">공제 세액(-)</td>
				</tr>
				<tr>
					<td colspan="2">매입세금계산서 등 수취세액공제(-)</td>
					<td><input name="in1" type="number" readonly> 원</td>
					<td>세액 : <input name="invat1" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2"> 의제매입 세액공제(-)</td>
					<td><input name="in2" type="number" readonly> 원</td>
					<td>세액 : <input name="invat2" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2"> 신용카드 매출전표 등 발행 세액공제(-)</td>
					<td><input name="in3" type="number" readonly> 원</td>
					<td>세액 : <input name="invat3" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">매입 세액 합계</td>
					<td><input name="totalin" type="number" readonly>원</td>
					<td>세액 :<input name="totalinvat" type="number" readonly> 원</td>
				</tr>
			</table>
			</fieldset>
			<fieldset>
			<legend>총 계</legend>
			<table class = "table table-condensed">
			<tr>
					<td colspan="2">납부할 총 부가가치세액</td>
					<td><input name="total" type="number" readonly> 원</td>
					<td>세액 :<input name="totalvat" type="number" readonly>
						원
					</td>
				</tr>
			</table>
			
			<%} %>
			</fieldset>
			
			<script type="text/javascript">
			var quarter = 0;
		function vatLoad(){
			var receiptOut = 0; //세금계산서분
			var cardOut = 0;	//신용카드분
			var otherOut = 0;	// 기타 분
			var totalOut = 0;
			//매입
			var receiptIn = 0; //세금계산서분
			//매입총함
			var totalIn = 0; 
			var totalvat = 0;
			quarter = <%=quarter%>;
			var pno = <%=loginUser.getPno()%>;
			
			var year = Number($("#searchY").text());
			$.ajax({
			url : "/jsmi/vview",
			type : "post",
			data :  {pno:pno, year:year, quarter:quarter},
			dataType : "json",
			success: function(data){ 
						var jsonObj = JSON.stringify(data);
						var jsonArr = JSON.parse(jsonObj);
			//매출
			if(<%=loginUser.getTaxType().equals("일반과세자")%>){
			for(var i in jsonArr.tax){
				switch(decodeURIComponent(jsonArr.tax[i].anm)){
				case "매출" : 
							switch(decodeURIComponent(jsonArr.tax[i].proof_type)){
								case "세금계산서" : receiptOut +=  parseInt(jsonArr.tax[i].cost);   break;	
								case "신용카드매출전표" : 
								case "현금영수증" : 	
												cardOut += parseInt(jsonArr.tax[i].cost); break;
								default : otherOut += parseInt(jsonArr.tax[i].cost); break;
								}  break;
				case "매출원가" :
				case "급여" :
				case "퇴직급여" :
				case "복리후생비" :
				case "임차료" :
				case "여비교통비" :
				case "차량유지비" :
				case "사무용품비" : switch(decodeURIComponent(jsonArr.tax[i].proof_type)){
									case "세금계산서" :
									case "신용카드매출전표" : 
									case "현금영수증" : 	
										 receiptIn +=  parseInt(jsonArr.tax[i].cost); break;	
										}  break;	
				case "접대비"	 :  break;
				}
			}
			totalOut = receiptOut + cardOut + otherOut;
			totalIn = receiptIn;
			total = totalOut - totalIn;
		
			$("input[name=out1]").val(receiptOut);
			$("input[name=outvat1]").val(receiptOut/10);
			$("input[name=out2]").val(cardOut);
			$("input[name=outvat2]").val(cardOut/10);
			$("input[name=out3]").val(otherOut);
			$("input[name=outvat3]").val(otherOut/10);
			$("input[name=totalout]").val(totalOut);
			$("input[name=totaloutvat]").val(totalOut/10);
			$("input[name=in1]").val(receiptIn);
			$("input[name=invat1]").val(receiptIn/10);
			$("input[name=totalin]").val(totalIn);
			$("input[name=totalinvat]").val(totalIn/10); 
			$("input[name=out2other]").val(cardOut * 0.013);
			out2other = $("input[name=out2other]").val();
			totalvat = total/10 -out2other;
			$("input[name=total]").val(total);
			$("input[name=totalvat]").val(totalvat);
			 receiptOut = 0; //세금계산서분
			 cardOut = 0;	//신용카드분
			 otherOut = 0;	// 기타 분
			 totalOut = 0;
			//매입
			 receiptIn = 0; //세금계산서분
			//매입총함
			 totalIn = 0; 
			 totalvat = 0;
			
			}else{
				var simpleout = 0;
				var simplein = 0;
				var deemout = 0;
				var x = 0;
				
				for(var i in jsonArr.tax){
					switch(decodeURIComponent(jsonArr.tax[i].anm)){
					case "매출" : if(decodeURIComponent(jsonArr.tax[i].proof_type.equals("현금영수증") || decodeURIComponent(jsonArr.tax[i].proof_type.equals("신용카드매출전표")){
								 					} 
								 
					simpleout += parseInt(jsonArr.tax[i].cost); break;
					case "매출원가" : deemout += parseInt(jsonArr.tax[i].cost); break;
					default : simplein += parseInt(jsonArr.tax[i].cost); break;
					}
				}
				
				simplein += deemout;
				switch ("<%=loginUser.getCtype()%>"){
				case "1": $("input[name=out1]").val(simpleout);
							x = 0.005;
						   $("input[name=outvat1]").val(simpleout * x);
						   $("input[name=in1]").val(simplein);
						   $("input[name=invat1]").val(simplein * x);
						   break;
				case "2": $("input[name=out2]").val(simpleout);
							x = 0.01;
				  			 $("input[name=outvat2]").val(simpleout * x);
				  			 $("input[name=in2]").val(deemout);
				  			$("input[name=invat2]").val(deemout * 8/108 );
						break;
				case "3": $("input[name=out3]").val(deemout);
							x= 0.02;
				  		  $("input[name=outvat4]").val(simpleout * x);
				  		$("input[name=in2]").val(deemout);
				  		$("input[name=invat2]").val(deemout * 4/104);
						break;
				case "4": $("input[name=out4]").val(simpleout);
							x= 0.03;
				 		  $("input[name=outvat4]").val(simpleout * x);
						break;
				}
				$("input[name=totalout]").val(simpleout);
				$("input[name=totaloutvat]").val(simpleout * x);
			}
			},
			error: function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		});
		}
		
		function pyear(){
	
		var year = parseInt($("#searchY").text());
		if (year < <%=day.getYear()+1900%>){
		$("#searchY").text((year+1 ));	
		}
		}
		
		function myear(){
			var year = parseInt($("#searchY").text());	
			$("#searchY").text((year-1 ));	
		}
		function firstHalf(){
		
		$('#searchQ').html('상');
		quarter= 1;
		}
		function secondHalf(){
			$('#searchQ').html('하');
			quarter = 2;
		}
		$(function(){
			if(<%=loginUser.getTaxType().equals("일반과세자")%>){
			if(<%=day.getMonth()%> < 6){
			quarter=1;	
			}else{
			quarter=2;	
			}
			}else{
			quarter=0;
			} 	
			vatLoad(); 
		});
		</script>
	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>

</html>