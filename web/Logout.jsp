<%-- 
    Document   : Logout
    Created on : Nov 21, 2017, 9:31:19 PM
    Author     : ANISH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%session.invalidate(); %>
       <%="Logout successfully! Thank You "%>
       <%
       response.sendRedirect("index.jsp");
       %>
    </body>
</html>
