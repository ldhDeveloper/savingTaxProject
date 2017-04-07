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
					<td> 분기별 조회가 가능합니다.</td>
					<td>&nbsp;</td><td>&nbsp;</td><td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick ="vatLoad();">조회</button></td>
				</tr>
				</table>
				<fieldset>
				<legend>조회되는 항목</legend>
			<%if(loginUser.getTaxType().equals("일반과세자")){//일반과세자처리용 테이블 %> 
			<table class="table table-condensed">
				<tr>
					<td colspan="2">매출 세액(+)</td>
				</tr>
				<tr>
					<td colspan="2">세금계산서(+)</td>
					<td><input name="out1" type="number" readonly> 원</td>
					<td>세액 : <input name="out1vat" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-신용카드 매출전표(+)</td>
					<td><input name="out2" type="number" readonly> 원</td>
					<td>세액 : <input name="out2vat" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">-기타분(+)</td>
					<td><input name="out3" type="number" readonly> 원</td>
					<td>세액 : <input name="out3vat" type="number" readonly>
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
					<td colspan="2">-의제매입세액공제(-)</td>
					<td><input name="in2" type="number" readonly> 원</td>
					<td>세액 : <input name="invat2" type="number" readonly>
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
					<td>세액 <input name="in3" type="number" readonly>원</td>
					<td>세액 :<input name="in3vat" type="number" readonly>
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
					<td> &nbsp;</td>
					<td>세액 :<input name="totalvat" type="number" readonly>
						원
					</td>
				</tr>
			</table>
			<%}else{ //간이과세자 처리용 테이블%>
			<table class="table table-condensed">
				<tr>
					<td colspan="2">매출 세액(+)</td>
				</tr>
				<tr>
					<td colspan="2">전기 가스 중기 및 수도사업</td>
					<td><input name="out1" type="number" readonly> 원</td>
					<td>세액 : <input name="out1vat" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">소매, 재생용자료 수집판매, 음식점업</td>
					<td><input name="out2" type="number" readonly> 원</td>
					<td>세액 : <input name="out2vat" type="number" readonly>
						원
					</td>
				</tr>
				<tr>
					<td colspan="2">제조, 농, 임, 어업, 숙박, 운수 및 통신업</td>
					<td><input name="out3" type="number" readonly> 원</td>
					<td>세액 : <input name="out3vat" type="number" readonly>
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
					<td>&nbsp;</td>
					<td>세액 :<input name="totalvat" type="number" readonly>
						원
					</td>
				</tr>
			</table>
			<%} %>
			</fieldset>
			<script type="text/javascript">
			//서식 출력시 들어가야되는 변수들
			
			//일반 과세자용 변수 
			var pno =0;
			var year = 0;
			var quarter = 0;
			var gout1 = 0; //세금계산서분
			var gout1vat = 0;
			var gout2 = 0;	//신용카드분
			var gout2vat = 0;
			var gout3 = 0;	// 기타 분
			var gout3vat =0;
		
			//매입
			var gin1= 0; //세금계산서분
			var gin1vat =0;
			var gin2 = 0;
			var gin3vat = 0;
			var gin3 = 0;
			var gin3vat = 0;	
			
			//간이 과세자용 변수
				var out = 0;
				var outvat = 0;
				var in1 = 0;
				var in2 = 0;
				var in3 = 0;
				var invat1 = 0;
				var invat2 = 0;
				var invat3 = 0;
				var x = 0;  //업종별 부가가치율 곱셈용이라  x로 표기
				var tnum = ""; //tag넘버 구분용
			//공통 변수
			var totalout = 0;	
			var totaloutvat = 0;
			var totalin = 0; //매입총함
			var totalinvat = 0;
			var totalvat = 0;
			var deem = 0; //의제매입세액공제율
			switch(<%= loginUser.getCtype()%>){
			case "2" : deem = 8/108;  break;
			case "3" : deem = 8/108; break;
			}
			
				 
			
			
		function vatLoad(){
			 
			 gout1 = 0; //세금계산서분
			 gout1vat = 0;
			 gout2 = 0;	//신용카드분
			 gout2vat = 0;
			 gout3 = 0;	// 기타 분
			 gout3vat =0;
			 totalout = 0;	//총 매출가액
			 totaloutvat = 0;
			//매입
			 gin1= 0; //세금계산서분
			 gin1vat =0;
			 gin2 = 0;
			 gin3vat = 0;
			 gin3 = 0;
			 gin3vat = 0;
			 totalin = 0; //매입총함
			 totalinvat = 0;
			//총 부가가치세
			 totalvat = 0;
			if(<%=loginUser.getCtype() %> ==2)
				deem = 8/108;
				
			
			quarter = <%=quarter%>;
			 pno = <%=loginUser.getPno()%>;
			
			 year = Number($("#searchY").text());
			$.ajax({
			url : "/jsmi/vview",
			type : "post",
			data :  {pno:pno, year:year, quarter:quarter},
			dataType : "json",
			success: function(data){ 
						var jsonObj = JSON.stringify(data);
						var jsonArr = JSON.parse(jsonObj);			
			//매출
			if(<%=loginUser.getTaxType().equals("일반과세자")%>){ //일반과세자 처리용 
	
			
			for(var i in jsonArr.tax){
				switch(decodeURIComponent(jsonArr.tax[i].anm)){
					case "매출" : 
							switch(decodeURIComponent(jsonArr.tax[i].proof_type)){
								case "세금계산서" : gout1 +=  parseInt(jsonArr.tax[i].cost); break;	
								case "신용카드매출전표" : 
								case "현금영수증" : 	
												gout2 += parseInt(jsonArr.tax[i].cost); break;
								default : gout3 += parseInt(jsonArr.tax[i].cost); break;
								}  break;
					case "매출원가" : if("<%=loginUser.getCtype()%>")
									gin2 +=  parseInt(jsonArr.tax[i].cost); break;	
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
										 gin1 +=  parseInt(jsonArr.tax[i].cost); break;	
										}  break;	
				}
			}
			 gout1vat = gout1/10;
			 gout2vat = gout2/10;
			 gout3vat =gout3/10;
			 totalout = gout1 +gout2 +gout3;	
			 totaloutvat = gtotalout/10;
			 gin1vat = gin/10;
			 gin2vat = gin2 * deem; 
			 gin3 = gout2;
			 gin3vat = gout2vat * 0.13;
			 totalin = gin1 + gin2;
			 totalinvat = totalin/10;
			 totalvat = totaloutvat - totalinvat - gin3vat;
			
			$("input[name=out1]").val(gout1);
			$("input[name=out1vat]").val(gout1vat);
			$("input[name=out2]").val(gout2);
			$("input[name=out2vat]").val( gout2vat);
			$("input[name=out3]").val(gout3);
			$("input[name=out3vat]").val( gout3vat);
			$("input[name=totalout]").val(totalout);
			$("input[name=totaloutvat]").val(totalout/10);
			$("input[name=in1]").val(gin1);
			$("input[name=invat1]").val(gin1vat);
			$("input[name=totalin]").val(totalin);
			$("input[name=totalinvat]").val(totalinvat); 
			$("input[name=in3]").val(gin3);
			$("input[name=in3vat]").val(gin3vat);
			$("input[name=totalvat]").val(totalvat);
	
			}else{ //간이과세자 처리용 함수
				 out = 0;
				 outvat = 0;
				 in1 = 0;
				 in2 = 0;
				 in3 = 0;
				 invat1 = 0;
				 invat2 = 0;
				 invat3 = 0;
				 x = 0;  //업종별 부가가치율 곱셈용이라  x로 표기
				 tnum = ""; //tag넘버 구분용
				 
				for(var i in jsonArr.tax){
					switch(decodeURIComponent(jsonArr.tax[i].anm)){
					case "매출" :
						if(decodeURIComponent(jsonArr.tax[i].proof_type) =="현금영수증"
							|| decodeURIComponent(jsonArr.tax[i].proof_type)=="신용카드매출전표"){
							 in3 += parseInt(jsonArr.tax[i].cost);
							}  
							out += parseInt(jsonArr.tax[i].cost); break;
					case "매출원가" : console.log(i++);
							in2 += parseInt(jsonArr.tax[i].cost);
							break; //의제매입세액
					default : 
							in1 += parseInt(jsonArr.tax[i].cost); break;//의제매입세액을 뺀 매입세액
					}
				}
				switch ("<%=loginUser.getCtype()%>"){
				case "1": x = 0.005; tnum = "1";
						break;
				case "2": x= 0.01; tnum = "2";
						break;
				case "3": x= 0.02; tnum = "3";
						break;
				case "4": x= 0.03; tnum = "4";
						break;
				}
				if(!(<%= loginUser.getCtype().equals("2")%> || <%= loginUser.getCtype().equals("3")%>)){
					in1 += in2;
				}
				
				outvat = in1 * x;
				invat1 = in1 * x;
				invat2 = in2 * deem;
				invat3 = in3 * 0.013;
				totalinvat = invat1 + invat2+ invat3;
				totalvat = outvat - totalinvat;
				//매출세액 계산
				$("input[name= out"+tnum+"]").val(out);
				$("input[name= outvat"+tnum+"]").val(outvat);
				$("input[name=totalout]").val(out);
				$("input[name=totaloutvat]").val(outvat);
				//공제세액 계산
				$("input[name=in1]").val(in1);
				$("input[name=invat1]").val(invat1);
				if(<%= loginUser.getCtype().equals("2")%> || <%= loginUser.getCtype().equals("3")%>){
				$("input[name=in2]").val(in2); 
				$("input[name=invat2]").val(invat2);
				}
				$("input[name=in3]").val(in3);
				$("input[name=invat3]").val(invat3);
				$("input[name=totalinvat]").val(totalinvat);
				$("input[name=totalvat]").val(totalvat);
			} // 간이과세자 처리 메소드 끝
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
		function print(){
			
			 /*
			 일반과세자
			 gout1   //세금계산서분
			 gout1vat  
			 gout2  	//신용카드분
			 gout2vat  
			 gout3  	// 기타 분
			 gout3vat 
		
			//매입
			 gin1 //세금계산서분
			 gin1vat
			 gin2 
			 gin3vat
			 gin3
			 gin3vat
			//간이 과세자용 변수
				 out
				 outvat
				 in1
				 in2 
				 in3
				 invat1
				 invat2 
				 invat3 
			//공통 변수
			 pno 
			 year 
			 quarter 
			 totalout 	
			 totaloutvat 
			 totalin  //매입총함
			 totalinvat 
			 totalvat */
		
		
			
		
			$.ajax({
				url  = "/jsmi/downform",
				type = "post",
				<%if (loginUser.getTaxType().equals("일반과세자")) {%>
				data = 		{pno:pno, year:year, quarter:quarter, gout1:gout1, gout1vat:gout1vat, gout2:gout2,
						gout2vat:goutvat2, gout3:gout3, gout3vat:gout3vat, gin1:gin1, gin1vat:gin1vat, 
						gin2:gin2, gin2vat:gin2vat, gin3:gin3, gin3vat:gin3vat,
						totalout:totalout, totaloutvat:totaloutvat, totalin:totalin, totalinvat:totalinvat, totalvat:totalvat}
				<%}else{%>
				data = {pno:pno, year:year, quarter:quarter, out:out, outvat:outvat, in1:in1, in2:in2, in3:in3, invat1:invat2, invat2:invat2, 
						invat3:invat3, totalout:totalout, totaloutvat:totaloutva, totalin:totalin: totalinvat:totalinvat, totalvat:totalvat}
				<%}%>
			});	
		
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
	
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>

</html>