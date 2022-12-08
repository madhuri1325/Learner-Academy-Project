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
Students s=new Students();

s.setId(Integer.parseInt(request.getParameter("stid")));

int row=dao.delete(s);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	out.print("not deleted successful");
}%>
</body>
</html>