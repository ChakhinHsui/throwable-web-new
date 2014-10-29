<html>
<head>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script>
	$(document).ready(function(){
			alert("oookk");
			$.post("question/getQuestion", {id: 1000}, function(result){
				alert("oookk");
				alert(result);
				$("#test").html(result.hello + " <br>" + result.id);
				}, "json");
	});
	</script>
</head>
<body>
	<div id="test">
		<a href="success.jsp">click</a>
		<form action="question/getQuestion">
			<input type="text"  name="id" />
			<input type="submit" value="确定" />
		</form>
	</div>
</body>
</html>
