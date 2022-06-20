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




<!-- OUTPUT -->
  <%
        String name=request.getParameter("selected");
        if(name!=null){
        	   %>     	
        
        <form class="signup-form" action="" method="post">
        <i class="fas fa-user-plus"></i>
        <input class="user-input" type="text" name="" value="<%out.println(name); %>" required>
        <input class="user-input" type="email" name="" placeholder="Email Address" required>
        <input class="user-input" type="password" name="" placeholder="Password" required>
        <input class="btn" type="submit" name="" value="SIGN UP">
        <div class="options-02">
          <p>Already Registered? <a href="Login.jsp">Sign In</a></p>
        </div>
      </form>
     <%} %>
     
<!--END OF OUTPUT  -->
<Script>

document.getElementById('submit').onclick = function() {
    var selected = [];
    for (var option of document.getElementById('pets').options)
    {
        if (option.selected) {
            selected.push(option.value);
        }
    }
    window.location.replace("ArrayDatatoJSP.jsp?selected="+selected);
}
</Script>
</body>
</html>