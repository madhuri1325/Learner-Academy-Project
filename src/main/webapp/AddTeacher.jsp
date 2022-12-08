<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.simplilearn.dao.TeachersDao"%>
<%@page import="com.simplilearn.bean.Teacher"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher</title>
</head>
<body>
<h1><i>Adding a teacher</i></h1>
<form action="addControllerTeacher.jsp">
<table>
<tr><td>Tid</td><td><input type="number" name="tid"></td></tr>
<tr><td>First name</td><td><input type="text" name="fname"></td></tr>
<tr><td>last name</td><td><input type="text" name="lname"></td></tr>
<tr><td>Address</td><td><input type="text" name="tadd"></td></tr>
<tr><td>Phone</td><td><input type="number" name="tph"></td></tr>
<tr><td><input type="submit" value="add teacher"></td></tr>
</table>
</form>
<table border="1">
<tr><th>Teacher ID</th><th>Teacher First Name</th><th>Teacher Last name</th><th>Address</th><th>Phone</th><th>Edit Action</th><th>Delete Action</th></tr>
<%TeachersDao dao=new TeachersDao();
List<Teacher> list=dao.display();
for(Teacher t:list){
%>
<tr><td><%=t.getId()%></td><td><%=t.getFname()%></td><td><%=t.getLname()%></td><td><%=t.getAddress() %></td><td><%=t.getPhone()%></td><td><a href="editTeacher.jsp?tid=<%=t.getId()%>">Edit Teacher name</a></td><td><a href="deleteTeacher.jsp?tid=<%=t.getId()%>">Delete Teacher</a></td></tr>
<%} %>
</table>
</body>
</html>
    