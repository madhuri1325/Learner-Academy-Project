<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Delete Class </i></h1>
<form action="DeleteControllerClass.jsp">
<input type="hidden" name="cid" value=<%=request.getParameter("cid") %>>

<input type="submit" value="delete">
</form>
</body>
</html>