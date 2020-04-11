<%-- 
    Document   : test2.jsp
    Created on : 11-Apr-2020, 16:04:41
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
            int i = 50;
            String name = "jmor";
            out.print("i = " + i);
            out.print("<br>name = " + name);
        
        %>
    </body>
</html>
