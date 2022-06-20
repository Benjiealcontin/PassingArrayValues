<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<label for="pets">Choose your pets:</label>
<select id="pets" multiple="multiple">
    <option value="dog">Dog</option>
    <option value="cat">Cat</option>
    <option value="rabbit">Rabbit</option>
    <option value="parrot">Parrot</option>
</select>
 
<button id="submit">Get Selected Values</button>

<Script>

document.getElementById('submit').onclick = function() {
    var selected = [];
    for (var option of document.getElementById('pets').options)
    {
        if (option.selected) {
            selected.push(option.value);
        }
    }
    document.location.href = 'JSPServletJSP?selected='+ selected ;
}
</Script>
</body>
</html>