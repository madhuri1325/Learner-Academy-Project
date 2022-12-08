
<%@page import="com.simplilearn.dao.TeachersDao"%>
<%@page import="com.simplilearn.bean.Teacher"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
TeachersDao dao=new TeachersDao();
Teacher t=new Teacher();
t.setId(Integer.parseInt(request.getParameter("tid")));
t.setFname(request.getParameter("fname"));
t.setLname(request.getParameter("lname"));
t.setAddress(request.getParameter("tadd"));
t.setPhone(Long.parseLong(request.getParameter("tph")));

int row=dao.insert(t);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>



