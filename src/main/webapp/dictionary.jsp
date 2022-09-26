<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Chinh
  Date: 9/26/2022
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String,String>dic = new HashMap<>();
%>
<%
    dic.put("hello","xin chao");
    dic.put("how","the nao");
    dic.put("book","quyen sach");
    dic.put("computer","may tinh");
    String search = request.getParameter("search");
    String result = dic.get(search);
    PrintWriter printWriter = response.getWriter();
    if (result != null){
        printWriter.write("<h1> English: "+search+"</h1>");
  printWriter.write("<h1>Vietnamese: "+result+"</h1>");
    }else {
        printWriter.write("<h1> Not Found </h1>");
    }
%>
</body>
</html>
