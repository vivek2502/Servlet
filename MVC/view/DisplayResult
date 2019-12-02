<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
<%
	session=request.getSession();
	PrintWriter pw=response.getWriter();
	pw.println(session.getAttribute("email"));
	pw.println(session.getAttribute("first_name"));
	pw.println(session.getAttribute("last_name"));
%>
</body>
</html>
