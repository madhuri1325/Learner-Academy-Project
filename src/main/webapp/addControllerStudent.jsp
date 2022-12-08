<%@page import="com.simplilearn.dao.StudentDao"%>
<%@page import="com.simplilearn.bean.Students"%>


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

StudentDao dao=new StudentDao();
Students s=new Students();
s.setId(Integer.parseInt(request.getParameter("stid")));
s.setFname(request.getParameter("stfname"));
s.setLname(request.getParameter("stlname"));
s.setAddress(request.getParameter("stadd"));
s.setPhone(Long.parseLong(request.getParameter("stph")));
s.setClassName(request.getParameter("stcln"));
int row=dao.insert(s);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>


