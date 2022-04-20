<%-- 
    Document   : Message
    Created on : Oct 9, 2021, 7:22:30 PM
    Author     : SANIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h3><%=request.getAttribute("Message")%></h3>
    </body>
</html>
