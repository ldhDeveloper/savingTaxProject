<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F&Q page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
.fontsize {
	font-family: ssangmundong;
	font-size:20px;
}

</style>
</head>

<body>
	<%@ include file="/views/common/menubar.jsp"%>
	<div class="container">
		<h2 >F&Q</h2>
		   <div>
			절세미인을 처음 이용하시나요? <br>
		    처음 오신 분들이 궁금해 하는 점을 모아놨습니다.</div>
		
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse1">처음 방문하였습니다. 어떻게 이용할 수 있을까요?</a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse in">
					<div class="panel-body">먼저, 무료회원가입 버튼을 클릭하고 회원가입을 합니다. (1개월
						무료 사용해보기) 회원 가입 시 사업주의 인적사항에 대하여 간단히 입력하시면 회원가입이 완료됩니다. 회원 가입 시
						설정한 아이디/패스워드로 로그인 하시면 1개월의 장부를 무료로 사용할 수 있습니다.</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse2">세무/회계 지식이 거의 없는데 혼자 사용할 수 있나요?</a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body">이지샵 자동장부는 누구나 쉽게 이용할 수 있도록 개발 되었습니다.
						가계부를 작성하듯 날짜와 거래처, 금액 등만 한 줄만 입력하면 복잡한 회계처리는 자동으로 적용됩니다. 그리고 어려운
						세무용어 대신 전기요금, 교통비 등 일상용어로 구성되어 있습니다. 가계부 쓰듯 장부 작성만 하면 어려운 세무서식은
						원클릭으로 자동으로 작성이 됩니다. 그리고 세무신고는 인터넷으로 간편하게 신고할 수 있습니다. 젤세도 사업유형에 따라
						각종 세액공제가 자동으로 반영되며, 온라인 문의를 통해 인터넷세무 상담을 받을 수 있습니다.</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse3">사업으로 인해 시간이 부족한데 작성할 시간이 부족하지 않을까요?</a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body">장부는 성실하게 작성할 수록 정확하고, 꼼꼼하게 사용할 수
						있습니다. 하지만 바쁜 사업으로 인해 작성할 여유가 없다면 매달 일정 기간을 정해놓고 장부를 기장하는 게 올바른
						방법입니다. 매 월 신고해야 하는 부분에 대해서 공지되고 있습니다. 확인 후 신고기간에 '자동으로 장부쓰기' 기능을
						통해 빠르게 장부 작성을 하고 작성만 하면 신고서는 자동으로 생성되니 편리하게 이용할 수 있습니다.</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse4">자동으로 장부쓰기 기능은 어떤 것 인가요?</a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse">
					<div class="panel-body">수입 - 전자세금계산서,현금영수증,카드매출 에 대하여 수집하여
						장부로 보낼 수 있고 비용 - 전자세금계산서,현금영수증,신용카드 거래내역을 불러와 역시 자동으로 입력할 수 있는 기능을
						지원합니다. 복식부기를 하시는 분들은 통장계좌거래내역 까지 불러와 계좌잔고를 자동으로 맞출 수 있습니다. '자동으로
						장부쓰기'기능을 통하여 빠르고 정확한 거래입력이 가능합니다. 또한 거래내역을 불러올 수 있으니, 따로 영수증을 챙겨서
						관리할 필요가 없어 편리합니다."</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse5">세무신고 하는게 어려울 것 같은데 하는 방법 좀 설명해 주세요.</a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse">
					<div class="panel-body">매출, 매입에 대한 거래내역을 등록하면 이지샵 자동장부의
						부가가치세신고, 소득세신고에서 신고에 필요한 서류가 자동으로 생성 됩니다. 따라서, 이지샵 자동장부에서 자동생성 된
						신고서를 출력하여 신고를 하거나, 이지샵 자동장부에서 제공하는 전자신고용 파일로 홈택스에서 전자신고를 하면 됩니다.</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse6">장부 작성 시 사용한 증빙들을 세무신고 시 세무서에 제출해야 하나요?</a>
					</h4>
				</div>
				<div id="collapse6" class="panel-collapse collapse">
					<div class="panel-body">장부/증빙 등을 세무신고 시 제출하여 신고하는 것은 아닙니다.
						장부/증빙을 기반으로 만들어진 세무신고서를 홈택스를 통해 국세청에 전송하게 되며 그걸로 세무신고는 끝나게 됩니다.</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse7">이용요금은 어떻게 되나요?</a>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse">
					<div class="panel-body">자동장부 이용 서비스에 대한 결제금액 은 다음 과 같습니다. *
						정회원가입: 최초 30,000원(장부3개월 제공) * 간편장부 : 월 10,000원 * 복식장부 : 월 20,000원
						* * 종합소득세신고프로그램 : 50,000원(복식)/30,000원(간편) ※ VAT별도</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse8">결제 방법은 어떻게 되나요?</a>
					</h4>
				</div>
				<div id="collapse8" class="panel-collapse collapse">
					<div class="panel-body">자동장부는 결제 시 기간별로 결제하시는 게 아니라 월 장부 별로
						결제하게 되어있습니다. 무료회원기간 1달은 첫 가입일 에 해당하는 달이 무료장부로 제공이 되며 정회원으로 가입 시 3달
						장부를 제공해 드리고 그 이후부턴 각 개월 장부에 대한 비용을 결제 해야 합니다. 예를 들어 5월에 가입했다면 5월
						장부 가 무료로 제공이 되고 정회원으로 가입 시 6,7,8 장부를 드리며, 그 이후 9월 장부부터 결제하면 되겠습니다.
						구매 버튼을 통해서 결제 가능합니다.</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="/views/common/footer.jsp"%>
</body>
</html>