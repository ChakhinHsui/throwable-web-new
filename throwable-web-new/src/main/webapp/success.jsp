<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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