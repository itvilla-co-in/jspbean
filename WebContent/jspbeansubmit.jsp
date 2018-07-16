<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="bean.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

<%
  if(!user.validate()){
	  response.sendRedirect("jspbeanform.jsp");
  }else{
	  user.setMessage("");
  }

%>

User-name : <jsp:getProperty property="username" name="user"/>
<br/>
password : <jsp:getProperty property="password" name="user"/> 
<br/>
<br/>
<strong>Thanks, form submitted</strong>
</body>
</html>