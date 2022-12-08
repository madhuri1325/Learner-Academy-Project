<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="com.simplilearn.dao.ClassesDao"%>
<%@page import="com.simplilearn.bean.Classes"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Classs</title>
</head>
<body>
<h1><i>Adding a Class</i></h1>
<form action="addControllerClass.jsp">
<table>
<tr><td>Id</td><td><input type="number" name="cid"></td></tr>
<tr><td>Name</td><td><input type="text" name="cname"></td></tr>

<tr><td><input type="submit" value="Add Class"></td></tr>
</table>
</form>
<table border="1">
<tr><th>Class ID</th><th>Class Name</th><th>Edit Action</th><th>Delete Action</th></tr>
<%
ClassesDao dao=new ClassesDao();
List<Classes> list=dao.display();
for(Classes c:list){
%>
<tr><td><%=c.getCid()%></td><td><%=c.getC_name()%></td><td><a href="editClass.jsp?cid=<%=c.getCid()%>">Edit Class</a></td><td><a href="deleteClass.jsp?cid=<%=c.getCid()%>">Delete Class</a><td><a href="assignsubteach.jsp?cid=<%=c.getCid()%>">Subject And Teacher</a></td><td><a href="clasRepo.jsp?cid=<%=c.getCid()%>">Class Report</a></td></tr>
<%} %>
</table>
</body>
</html>
    