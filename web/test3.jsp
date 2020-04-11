<%-- 
    Document   : test3.jsp
    Created on : 11-Apr-2020, 16:18:07
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test 3</title>
    </head>
    <body>
        <h1>Test 3</h1>
        
        <% 
            // a, i, name, parA, xxx
            out.print("a = " + request.getAttribute("a"));
            out.print("<br>i = " + request.getAttribute("i"));
            out.print("<br>name = " + request.getAttribute("name"));
            out.print("<br>parA = " + request.getAttribute("parA"));
            out.print("<br>xxx = " + request.getAttribute("XXX"));
        %>
    </body>
</html>
