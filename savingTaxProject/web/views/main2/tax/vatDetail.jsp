<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*,diary.model.vo.Diary, java.util.*"%>
<%
	Date day = new GregorianCalendar().getTime();
	String quarter = "";
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
<script>
function select(){
	
	
	
	
	
	
	
}
</script>

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
				<%
					if (loginUser.getTaxType().equals("일반")) {
						if (day.getMonth() < 6)
							quarter = "1분기";

						else
							quarter = "2분기";
					} else {

					}
				%>
			</div>
			<table class="table table-condensed">
				<tr>
					<td>&nbsp; &nbsp;&nbsp; <span style="color: blue;"><%=loginUser.getPname()%></span>
						님의 부가가치세 계산 창입니다.
					</td>
					<td>구분 : </td>
					<td>&nbsp;</td>
					<td>다른분기 계산하기</td>
				</tr>
				<tr style="text-align: center;">
					<td ><label id="year">
					</label> <label id=quarter></label><label>분기</label></td>
					<td colspan="3"><img src="/jsmi//images/main2/arrow2.png"
						onclick="myear();"> <label id="searchY"><%=day.getYear() + 1900%>
					</label><label>년</label> <img src="/jsmi//images/main2/arrow.png" onclick="pyear();">
						<label id=searchQ><%=quarter%></label><label>반기</label></td>
					</td>
				</tr>


				<tr>
					<td>입력항목을 제외한 항목은 버튼 클릭시 거래장부에서 자동으로 적용됩니다.</td>
					<td>&nbsp;</td><td>&nbsp;</td><td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick ="select();">조회</button></td>
				</tr>
				</table>
				<fieldset>
				<legend>조회되는 항목</legend>
			<table class="table table-condensed">
				<tr>
					<td colspan="2">매출 세액(+)</td>
				</tr>
				<tr>
					<td colspan="2">세금계산서(+)</td>
					<td><input name="output1" type="number" readonly> 원</td>
					<td>세액 : <input name="outputvat1" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-신용카드 매출전표(+)</td>
					<td><input name="output2" type="number" readonly> 원</td>
					<td>세액 : <input name="outputvat2" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-기타분(+)</td>
					<td><input name="output3" type="number" readonly> 원</td>
					<td>세액 : <input name="outputvat3" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-합계(+)</td>
					<td><input name="output" type="number" readonly> 원</td>
					<td>세액 : <input name="outputvat" type="number" readonly>
						원
					</td>
				</tr>
				<tr></tr>
				<tr>
					<td colspan="2">매입 세액(-)</td>

				</tr>
				<tr>
					<td colspan="2">-세금계산서(-)</td>
					<td><input name="input1" type="number" readonly> 원</td>
					<td>세액 : <input name="inputvat1" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
				
				<tr>
					<td colspan="2">-접대비 및 이와 유사한 비용</td>
					<td><input name="input3" type="number" readonly> 원</td>
					<td>세액 : <input name="inputvat3" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">매입 세액 합계</td>
					<td><input name="input" type="number" readonly>원</td>
					<td>세액 :<input name="inputvat" type="number" readonly></td>
				</tr>

				
				<tr>
					<td colspan="2">-기타 공제 세액(신용카드발행분)(-)</td>
					<td>&nbsp;</td>
					<td>세액 :<input name="othervat2" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-세금계산서등 수취세액 공제</td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2">납부할 총 부가가치세액</td>
					<td><input name="total" type="number" readonly> 원</td>
					<td>세액 :<input name="totalvat" type="number" readonly>
						원
					</td>
				</tr>
			</table>
			</fieldset>
			
			<fieldset>
			<legend>추가 입력 받는 항목</legend>
			<table class = "table table-condensed">
			<tr>
					<td colspan="2">-사업과 관련없는 지출</td>
					<td><input id="in1" name="input2" type="number"
						placeholder="입력란" step="1000"> 원</td>
					<td>세액 :<input name="inputvat2" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-기타 공제 세액(-)</td>
					<td><input id="in3" name="other1" type="number"
						placeholder="입력란"> 원</td>
					<td>세액 :<input name="othervat1" type="number" readonly>
						원
					</td>
				</tr>
			</table>
			<button id = "cal" style="float: right;" onclick='vatCal();'>부가가치세 계산</button>
			</fieldset>
			<script type="text/javascript">
		//매출
		var receiptOut = 0; //세금계산서분
		var cardOut = 0;	//신용카드분
		var otherOut = 0;	// 기타 분
		var totalOut = 0;
		//매입
		var receiptIn = 0; //세금계산서분
		//접대비
		var amuse = 0;
		//비사업성지출세액
		var noBusi = 0;
		// 면세사업매입세액
		var nontax = 0;
		
		//매입총함
		var totalIn = 0; 
		
		var totalvat = 0;
		function vatCal(){
			var pno = <%=loginUser.getPno()%>
			var taxType = <%=loginUser.getTaxType()%>
			var month = new Date().getMonth()+1;
			console.log(pno);
		$.ajax({
			url : "/jsmi/vview",
			type : "post",
			data :  {pno:pno, month:month, taxType:taxType},
			dataType : "json",
			success:  function(data){ 
			var jsonObj = JSON.stringify(data);
			var jsonArr = JSON.parse(jsonObj);
			for(var i in jsonArr.tax){
				switch(decodeURIComponent(jsonArr.tax[i].anm)){
				case "매출" : console.log(decodeURIComponent(jsonArr.tax[i].anm));
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
									default : otherOut  += parseInt(jsonArr.tax[i].cost); break;
										}  break;	
				
				case "접대비"	 : amuse +=  parseInt(jsonArr.tax[i].cost); break;
				}
			}
			noBusi = $("input[name=input2]").val();
			
			other1 = $("input[name=other1]").val();
			othervat2 = $("input[name=othervat2]").val();
			totalOut = receiptOut + cardOut + otherOut;
			totalIn = receiptIn - amuse - noBusi;
			total = totalOut - totalIn - other1;
			totalvat = total/10 - othervat2
			
			
			$("input[name=output1]").val(receiptOut);
			$("input[name=outputvat1]").val(receiptOut/10);
			$("input[name=output2]").val(cardOut);
			$("input[name=outputvat2]").val(cardOut/10);
			$("input[name=output3]").val(otherOut);
			$("input[name=outputvat3]").val(otherOut/10);
			$("input[name=output]").val(totalOut);
			$("input[name=outputvat]").val(totalOut/10);
			$("input[name=input1]").val(receiptIn);
			$("input[name=inputvat1]").val(receiptIn/10);
			$("input[name=inputvat2]").val(noBusi/10); 
			 $("input[name=input3]").val(amuse);
			$("input[name=inputvat3]").val(amuse/10);
			$("input[name=input]").val(totalIn);
			$("input[name=inputvat]").val(totalIn/10); 
			$("input[name=othervat1]").val(other1/10);
			$("input[name=othervat2]").val(cardOut * 0.013);
			$("input[name=total]").val(total);
			$("input[name=totalvat]").val(totalvat);
			$("#cal").attr("disabled", true);
			
			},
			error: function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		});
		}

		function pyear(){
		var year = parseInt($("#searchY").text());	
		$("#searchY").text((year+1 ));	
		}
		function myear(){
			var year = parseInt($("#searchY").text());	
			$("#searchY").text((year-1 ));	
		}
		
		
		</script>
		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>

</html>