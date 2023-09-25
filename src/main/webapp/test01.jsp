<%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-09-25
  Time: 오후 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 두수사이의 총합을 구하는 메서드 --%>
<%!
    public int hap(int s,int e){
        int sum=0;
        for(int i=s; i<=e; i++){
            sum+=i;
        }
        return sum;
    }
%>

<%
    int sum=0;
    for(int i=1; i<=100; i++){
        sum+=i;
    }

    // jsp의 내장객체(이미 만들어진 객체)
    // request,response:
    // session,out,config,application,page,pageContext
%>


<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
