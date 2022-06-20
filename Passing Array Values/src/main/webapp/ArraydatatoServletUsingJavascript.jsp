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
	document.getElementById("Form").action="aa";
	document.getElementById("Form").method = methodType;
	document.getElementById("Form").submit();
} 
</script>
<body>

<form id="Form">
<select id="pets" name="pets" multiple="multiple">
    <option value="dog">Dog</option>
    <option value="cat">Cat</option>
    <option value="rabbit">Rabbit</option>
    <option value="parrot">Parrot</option>
</select>
<button type="button" onclick="CallServlet('GET')">DoGet</button>
<button type="button" onclick="CallServlet('POST')">DoPost</button>
</form>


</body>
</html>