<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.simplilearn.dao.SubjectDao"%>
<%@page import="com.simplilearn.bean.Subjects"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
SubjectDao dao=new SubjectDao();
Subjects subject=new Subjects();
subject.setSid(Integer.parseInt(request.getParameter("subid")));
subject.setSname(request.getParameter("subname"));
int row=dao.insert(subject);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>