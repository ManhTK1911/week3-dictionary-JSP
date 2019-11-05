<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: manhtk
  Date: 05/11/2019
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("genre", "thể loại");
    dic.put("action", "hành động");
    dic.put("ghost", "ma");
    dic.put("heaven", "thiên đường");
    dic.put("play", "chơi");
    dic.put("sleep", "ngủ");

    String search = request.getParameter("search");
    String result = dic.get(search);

    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found!");
    }

%>
</body>
</html>
