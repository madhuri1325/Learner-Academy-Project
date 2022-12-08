<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

</head>

<body bgcolor= "grey">
    <form action="AdminController" method="POST">  
        <div class="container">
        	<input type="hidden" name="command" value="LOGIN" />
            <label>Username : </label>   
            <br/>
            <input type="text"  name="username" >  
            <br/>
            <label>Password : </label>   
            <br/>
            <input type="password"  name="password" >  
            <br/>
            <button type="submit">Login</button>   
            <br/>
            <input type="checkbox" checked="checked"> Remember me   <br><br>
           </div>
             <a href="LOGOUT">LOGOUT</a>
               
           
       
    </form>     


</body>
</html>