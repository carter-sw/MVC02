<%@ page import="kr.bit.model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-09-25
  Time: 오후 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num = Integer.parseInt(request.getParameter("num"));
    MemberDAO dao = new MemberDAO();
    int cnt=dao.memberDelete(num);
    if(cnt>0){
        response.sendRedirect("memberList.jsp");
    } else {
        throw new ServletException("not delete");
    }

%>

