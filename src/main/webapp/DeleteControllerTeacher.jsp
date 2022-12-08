<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.simplilearn.dao.TeachersDao"%>
<%@page import="com.simplilearn.bean.Teacher"%>
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
t.setId(Integer.parseInt(request.getParameter("id")));

int row=dao.delete(t);
if(row==1){
	response.sendRedirect("success.jsp");
}
else{
	out.print("not deleted successful");
}%>
</body>
</html>