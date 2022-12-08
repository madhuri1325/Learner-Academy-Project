<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><i>Editing Class name</i></h1>
<form action="ediControllerClass.jsp">
<input type="hidden" name="cid" value=<%=request.getParameter("cid") %>>
Class Name to be edited <input type="text" name="cname">
<input type="submit" value="edit">
</form>
</body>
</html>