<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.simplilearn.dao.StudentDao"%>
<%@page import="com.simplilearn.bean.Students"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
StudentDao dao=new StudentDao();
Students student=new Students();
student.setId(Integer.parseInt(request.getParameter("id")));
student.setFname(request.getParameter("pname"));
student.setLname(request.getParameter("lname"));
int row=dao.edit(student);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>

</body>
</html>