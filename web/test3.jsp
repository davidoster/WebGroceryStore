<%-- 
    Document   : test3.jsp
    Created on : 11-Apr-2020, 16:18:07
    Author     : mac
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="models.Product"%>
<%@page import="models.Vegetable"%>
<%@page import="models.Potatoe"%>
<%@page import="java.util.ArrayList"%>
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
        <% 
            List<Product> products = new ArrayList<>(); 
            Product p1 = new Product("Potatoe", 20.0f);
            System.out.println("p1: " + p1);
            Product p2 = new Vegetable("Potatoe1", 20.0f);
            System.out.println("p2: " + p2);
            Product p4 = new Vegetable("Tomatoe1", 25.0f);
            System.out.println("p4: " + p4);
            Product p3 = new Potatoe("Potatoe2", 20.0f);
            System.out.println("p3: " + p3);
            products.add(p1);
            products.add(p2);
            products.add(p3);
            
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocerystore?useSSL=false&serverTimezone=UTC",
                                          "root", "root");
            Statement s = c.createStatement();
            ResultSet rs;
            rs = s.executeQuery("SELECT * FROM grocerystore.products");
            while(rs.next()) {
                out.print("Name :" + rs.getString("name"));
                out.print("\tPrice :" + rs.getString("price"));
                out.print("<br>");
            }
        %>
    </body>
</html>
