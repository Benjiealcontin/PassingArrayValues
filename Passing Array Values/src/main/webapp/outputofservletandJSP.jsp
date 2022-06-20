<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H1>

<% String[] cba = (String[]) request.getAttribute("selected"); %>
<input class="user-input" type="text" name="" value="<%=Arrays.toString(cba)%>" required>

 
</H1>
</body>
</html>