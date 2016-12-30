<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>error</title>
</head>
<body>
<h1><b>error in your page!</b></h1>
<l><%=exception %></l></p>
<br>
<pre>问题如下
<%
exception.printStackTrace(new PrintWriter(out));
%>
</pre>
</br>
<br>
<pre>
<%= exception.getMessage() %>
</pre>
</br>
</body>
</html>