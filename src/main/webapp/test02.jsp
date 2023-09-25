<%@ page import="kr.bit.model.MyCalc" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-09-25
  Time: 오후 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MyCalc c = new MyCalc();
    int v= c.hap(1,100);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <td>1~300 까지의 총합</td>
        <td><%=v%></td>
    </tr>
</table>

</body>
</html>
