<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.simplilearn.dao.*"%>
<%@page import="com.simplilearn.bean.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Class Report For Engineering</h1>
<table border='1'>
<tr><th>Class ID</th><th>Teacher</th><th>Subject</th><th>Delete Action</th></tr>
<%
ClasssDAO dao=new ClasssDAO();
List<Classs> list=dao.display();
for(Classs c:list){
%>
<tr><td><%=c.getId()%></td><td><%=c.getTeacher()%></td><td><%=c.getSubject() %></td><td><a href="delete">Delete</a></td></tr>

<%} %>
</table>
<h1>List of Students</h1>
<table border='1'>
<tr><th>ID</th><th>FirstName</th><th>Address</th><th>Delete Action</th></tr>
<%
StClDAO dao1= new  StClDAO();
List<StuClassTable> list1=dao1.display();

for(StuClassTable c1:list1){
%>
<tr><td><%=c1.getId()%></td><td><%=c1.getName()%></td><td><%=c1.getAddress() %></td><td><a href="delete">Delete</a></td></tr>

<%} %>
</table>
</body>
</html>