<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
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
</script>
<title>Insert title here</title>
</head>
<body>
<div id='print_page'>
인쇄내용
</div>
<input type='button' value='  인 쇄  ' onclick="pagePrint(document.getElementById('print_page'))">
</body>
</html>