<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>一个简单的JSP页面——显示系统当前时间</title>
</head>
<body>
<h2>Hello, JSP!</h2>
<%
    // 这里就是书上说的「在 <% 和 %> 之间嵌入 Java 代码」
    // 每次刷新页面都会重新执行，所以时间会变 —— 这就是"动态"网页
    String now = LocalDateTime.now()
            .format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
%>
当前访问时间是：<%= now %>
</body>
</html>
