<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Delete Student </i></h1>
<form action="DeleteControllerStudent.jsp">
<input type="hidden" name="stid" value=<%=request.getParameter("stid") %>>

<input type="submit" value="delete">
</form>
</body>
</html>
