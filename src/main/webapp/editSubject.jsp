<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Editing Subject name</i></h1>
<form action="editControllerSubject.jsp">
<input type="hidden" name="Sid" value=<%=request.getParameter("Sid") %>>
Name to be edited <input type="text" name="pname">
<input type="submit" value="edit">
</form>
</body>
</html>