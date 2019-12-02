<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
<style>  
   body
   	{
   		background-color:blue;  
   	} 
   	marquee
   	{
   		font-size: 20px;
        font-weight: 200;
        color: white;
        font-family: sans-serif;
        width: 100%;
        padding: 1px 0 ;
        background-color:red;
   	}	 
</style>
<title>LoginDone!</title>
</head>
<marquee behavior="scroll" direction="left" scrollamount="10">
		<h1>Thank You...!!!</h1>
	</marquee>
<body>
<%
	session=request.getSession();
	PrintWriter pw=response.getWriter();
	pw.println("Mr."+session.getAttribute("name"));
	
%>
</body>
</html>
