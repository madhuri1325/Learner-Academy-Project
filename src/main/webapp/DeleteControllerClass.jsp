<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.simplilearn.dao.ClassesDao"%>
<%@page import="com.simplilearn.bean.Classes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

ClassesDao dao=new ClassesDao();
Classes c=new Classes();
c.setCid(Integer.parseInt(request.getParameter("cid")));
int row=dao.delete(c);
if(row>0){
	response.sendRedirect("Fail.jsp");
}
else{
	out.print("not successful");
}
%>
</body>
</html>