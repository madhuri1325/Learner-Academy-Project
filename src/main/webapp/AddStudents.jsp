<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.simplilearn.dao.*"%>
<%@page import="com.simplilearn.bean.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
</head>
<body>
<h1><i>Adding a Student</i></h1>
<form action="addControllerStudent.jsp">
<table>
<tr><td>id</td><td><input type="number" name="stid"></td></tr>
<tr><td>First name</td><td><input type="text" name="stfname"></td></tr>
<tr><td>last name</td><td><input type="text" name="stlname"></td></tr>
<tr><td>Address</td><td><input type="text" name="stadd"></td></tr>
<tr><td>Phone</td><td><input type="number" name="stph"></td></tr>
<tr><td>Class Name</td><td><input type="text" name="stcln"></td></tr>

<tr><td><input type="submit" value="add students"></td></tr>
</table>
<table border="1">
<tr><th> ID</th><th>First Name</th><th>Last name</th><th>Address</th><th>Phone</th><th>Class Name</th><th>Edit Action</th><th>Delete Action</th></tr>
<%StudentDao dao=new StudentDao();
List<Students> list=dao.display();
for(Students t:list){
%>
<tr><td><%=t.getId()%></td><td><%=t.getFname()%></td><td><%=t.getLname()%></td><td><%=t.getAddress() %></td><td><%=t.getPhone()%></td><td><%=t.getClassName() %></td><td><a href="editStudent.jsp?stid=<%=t.getId()%>">Edit</a></td><td><a href="deleteStudent.jsp?stid=<%=t.getId()%>">Delete</a></td></tr>
<%} %>
</table>
</form>
</body>
</html>
    