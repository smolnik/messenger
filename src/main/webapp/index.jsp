<!DOCTYPE HTML>
<%@page import="java.util.Date"%>
<html>
<%
	HttpServletResponse httpResponse = (HttpServletResponse) response;
	httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	httpResponse.setHeader("Pragma", "no-cache");
	httpResponse.setDateHeader("Expires", 0);
%>
<head>
<title>Messenger :)</title>
<link rel="stylesheet" type="text/css" href="simple.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
		String name = request.getParameter("name");
	%>
	Hey!&nbsp;<%=name == null ? "Anonymous" : name%>
	<br>
	<br> Who am I? Take a look at:
	<br>
	<div id="info" class="border">
		<%="Date and time: " + new Date()%>
	</div>
	<div id="info" class="border">
		<%="Client IP: " + request.getRemoteAddr()%>
	</div>

	<br>
	<form action="send" method="POST">

		<div>
			Type&nbsp;message:&nbsp;<input name="url" type="text" size="80">&nbsp;<input
				type="submit" value="Send message" size="30"> <br>
			<%
				String status = (String) request.getAttribute("status");
				if (status != null) {
			%>
			<br>Status:&nbsp;<b><%=status%></b>%>
			<%
				}
			%>
		</div>
	</form>
</body>
</html>