<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function  CallServlet(methodType){
	document.getElementById("Form").action="Servlet";
	document.getElementById("Form").method = methodType;
	document.getElementById("Form").submit();
} 

</script>
<body>
<form id="Form">
 Name: <input type ="text" name="name">
<button type="button" onclick="CallServlet('GET')">DoGet</button>
<button type="button" onclick="CallServlet('POST')">DoPost</button>
</form>
</body>
</html>