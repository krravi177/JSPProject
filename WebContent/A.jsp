<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   String uid=request.getParameter("uid");
  String pass=request.getParameter("pass");
   out.println("uid "+uid);
   if(!uid.equalsIgnoreCase(pass))
   {  //page
	   
	   String email= config.getInitParameter("email");
       String p= application.getInitParameter("phone");
	   session.setAttribute("ud", uid.toUpperCase());
	   
	   out.println("Email config "+email);
	   out.println("Phone context "+p);
	   
//pageContext.setAttribute("id",uid,pageContext.SESSION_SCOPE);
pageContext.setAttribute("id",uid,pageContext.APPLICATION_SCOPE);
	    application.setAttribute("auid", "Mr"+uid);
request.getRequestDispatcher("B.jsp").include(request, response);
   }
   else
   {
response.sendRedirect("index.jsp");  
   }
%>
</body>
</html>