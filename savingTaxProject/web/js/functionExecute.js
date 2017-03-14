
$(function(){
	var script = document.createElement("script");
	script.src = "./jquery-3.1.1.min.js";
	document.getElementsByTagName("head")[0].appendChild(script);

	$('button').click(function(){
		var address =  this.val();
		console.log(address);
		location.href = "../views/functionExecute" +address + ".html";
	});
});