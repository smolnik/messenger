<!DOCTYPE HTML>
<%@page import="java.util.Date"%>
<html>
<head>
<meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate" />
<meta http-equiv="Cache-Control" content="post-check=0, pre-check=0" />
<meta http-equiv="Pragma" content="no-cache" />
<title>Messenger :)</title>
<link rel="stylesheet" type="text/css" href="simple.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	Hello my Friend!
	<br>
	<br> Who am I? I am Messenger. Take a look at:
	<br>
	<div id="info" class="border">
		<%="Date and time: " + new Date()%>
	</div>
	<div id="info" class="border">
		Client IP:&nbsp;<%=request.getRemoteAddr()%>
	</div>

	<br>
	<form action="send" method="POST">

		<div>
			Type&nbsp;message:&nbsp;<input name="url" type="text" size="80">&nbsp;<input
				type="submit" value="Send message" size="30"> <br>
		</div>
	</form>
</body>
</html>