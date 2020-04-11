<%-- 
    Document   : test
    Created on : 11-Apr-2020, 15:50:05
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
        <h1>Hello World2!</h1>
        <% 
            String a = "sdfsf";
            out.print("<p> a =" + a + " first time");
            out.print("parameter a = " + request.getParameterValues("a")[0]);
//            int xxx = 400;
        %>
        <p>a = <%= a %></p>
        <p><%@include file="test2.jsp" %></p>
        <% // xxx = 2; %>
        <% 
            // String a, int i, String name
            RequestDispatcher rd = request.getRequestDispatcher("test3.jsp");
            request.setAttribute("a", a);
            request.setAttribute("parA", request.getParameterValues("a")[0]);
            request.setAttribute("i", i);
            request.setAttribute("name", name);
            //xxx = 54;
            request.setAttribute("XXX", xxx);
            rd.forward(request, response);
        
        %>
        <%! 
            int xxx = 400; 
            
        %>
        <% 
            class A {
                int xxx = 400;
            }
        
        %>
    </body>
</html>
