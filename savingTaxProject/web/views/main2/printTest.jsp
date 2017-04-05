<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<style>
	#write_page div{
		border: 1px solid black;
		position: absolute;
		margin: 0 auto;
		padding: 0 auto;
	}
</style>
<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
function pagePrint(Obj) { 
    var W = Obj.offsetWidth;        //screen.availWidth; 
    var H = Obj.offsetHeight;       //screen.availHeight;

    var features = "menubar=no,toolbar=no,location=no,directories=no,status=no,scrollbars=yes,resizable=yes,width=" + W + ",height=" + H + ",left=0,top=0"; 
    var PrintPage = window.open("about:blank",Obj.id,features); 

    PrintPage.document.open(); 
    PrintPage.document.write("<html><head><title></title><style type='text/css'>body, tr, td, input, textarea { font-family:Tahoma; font-size:9pt; }</style>\n</head>\n<body>" + Obj.innerHTML + "\n</body></html>"); 
    PrintPage.document.close(); 

    PrintPage.document.title = document.domain; 
    PrintPage.print(PrintPage.location.reload()); 
}

$(function(){
	$( document ).on( "mousemove", function( event ) {
		  console.log( "pageX: " + event.pageX + ", pageY: " + event.pageY );
	});
})
</script>
<title>Insert title here</title>
</head>
<body>
<div id='print_page'>
<div id='write_page' style="position:absolute;">
<br>
	<div id="1" style="left:272px; top:435px; width:108px; height:54px;">aaaaaaaaaaaa</div>
	<div id="2" style="left:416px; top:436px; width:40px; height:52px;"></div>
	<div id="3" style="left:492px; top:436px; width:40px; height:52px;"></div>
	<div id="4" style="left:608px; top:436px; width:52px; height:52px;"></div>
	<div id="5" style="left:841px; top:436px; width:56px; height:52px;"></div>
	<div id="6" style="left:841px; top:436px; width:56px; height:52px;"></div>
</div>
<img src="/jsmi/images/main2/generaltaxor.png" style="width:210mm; height:297mm">
</div>
<input style="position: absolute; z-index:10000" type='button' value='  인 쇄  ' onclick="pagePrint(document.getElementById('print_page'))">
</body>
</html>