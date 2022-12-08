<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
     <%@page import="com.simplilearn.dao.*"%>
<%@page import="com.simplilearn.bean.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Choose Subject And Teacher For Engineering</h1>
<form action="subteachshow.jsp">
<input type="submit" value="Add">


<table border='1'>

<tr><td><label for="Sname">Choose a Subject:</label>

<select name="Sname" id="Sname">
  <option value="Bsc computers">Choose Subject</option>
  <option value="IT">IT</option>
  <option value="BCA">BCA</option>
  <option value="BA">BA</option>
  <option value="C++">C++</option>
  <option value="C">C</option>
  <option value="JAVA">JAVA</option>
</select>
</td></tr>

<tr><td><label for="Sname">Choose a Teacher:</label>

<select name="Sname" id="Sname">
  <option value="Bsc computers">Choose Teacher</option>
  <option value="IT">IT</option>
  <option value="BCA">BCA</option>
  <option value="BA">BA</option>
  <option value="C++">C++</option>
  <option value="C">C</option>
  <option value="JAVA">JAVA</option>
</select>
</td></tr>
</table>
<table border='1'>
<tr><th>Class ID</th><th>Teacher</th><th>Subject</th><th>Delete Action</th></tr>
<%
StudentDao dao=new StudentDao();
List<Students> list=dao.display();
for(Students s:list){
%>
<tr><td><%=s.getId()%></td><td><%=s.getFname()%></td><td><%=s.getLname() %></td><td><%=s.getAddress() %></td><td><%=s.getPhone() %></td><td><%=s.getClassName() %><td><a href="delete">Delete</a></td></tr>

<%} %>
</table>


</form>
</body>
</html>
