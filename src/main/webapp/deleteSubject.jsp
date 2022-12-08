<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Delete Subject</i></h1>
<form action="DeleteControllerSubject.jsp">
<input type="hidden" name="Sid" value=<%=request.getParameter("sid") %>>
Subject to be deleted <input type="text" name="Sname">


<input type="submit" value="delete">
</form>
</body>
</html>