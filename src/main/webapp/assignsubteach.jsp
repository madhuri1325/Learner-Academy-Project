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
ClasssDAO dao=new ClasssDAO();
List<Classs> list=dao.display();
for(Classs c:list){
%>
<tr><td><%=c.getId()%></td><td><%=c.getTeacher()%></td><td><%=c.getSubject() %></td><td><a href="delete">Delete</a></td></tr>

<%} %>
</table>


</form>
</body>
</html>