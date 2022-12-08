<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.simplilearn.dao.*"%>
<%@page import="com.simplilearn.bean.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1><i>Adding a Subject</i></h1>
<form action="addControllerSubject.jsp">
<table>
<tr><td>Sid</td><td><input type="number" name ="subid"></td></tr>
<tr><td>Sub Name</td><td><input type="text" name="subname"></td></tr>


<tr><td><input type="submit" value="add subject"></td></tr>
</table>
<table border="1">
<tr><th>Subject ID</th><th>Subject Name</th><th>Edit Action</th><th>Delete Action</th></tr>
<%SubjectDao dao=new SubjectDao();
List<Subjects> list=dao.display();
for(Subjects t:list){
%>
<tr><td><%=t.getSid()%></td><td><%=t.getSname()%></td><td><a href="editSubject.jsp?subid=<%=t.getSid()%>">Edit name</a></td><td><a href="deleteSubject.jsp?subid=<%=t.getSid()%>">Delete</a></td></tr>
<%} %>
</table>
</form>
</body>

</html>
    