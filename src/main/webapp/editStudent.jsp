<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Editing the Student name</i></h1>
<form action="editControllerStudent.jsp">
<input type="hidden" name="id" value=<%=request.getParameter("id") %>>
First Name to be edited <input type="text" name="pname">
Last Name to be edited<input type ="text" name="lname">
<input type="submit" value="edit">

</form>
</body>
</html>