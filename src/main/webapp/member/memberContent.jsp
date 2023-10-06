<%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-04
  Time: 오후 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="kr.bit.model.*" %>
<%
    int num=Integer.parseInt(request.getParameter("num"));
    MemberDAO dao = new MemberDAO();
    MemberVO vo = dao.memberContent(num);


%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form action="memberUpdate.jsp" method="post">
    <input type="hidden" name="num" value="<%=vo.getNum()%>">
<table class="table table-bordered">
    <% if(vo !=null){ %>
    <tr>
        <td colspan="2"> <%=vo.getName()%> 회원의 상세보기 </td>
    </tr>
    <tr>
        <td>번호</td>
        <td><%=vo.getNum()%></td>
    </tr>
    <tr>
        <td>아이디</td>
        <td><%=vo.getId()%></td>
    </tr>
    <tr>
        <td>비밀번호</td>
        <td><%=vo.getPass()%></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><%=vo.getName()%></td>
    </tr>
    <tr>
        <td>나이</td>
        <td><input type="text" name="age" value="<%=vo.getAge()%>"></td>
    </tr>
    <tr>
        <td>이메일</td>
        <td><input type="text" name="email" value="<%=vo.getEmail()%>"></td>
    </tr>
    <tr>
        <td>전화번호</td>
        <td><input type="text" name="phone" value="<%=vo.getPhone()%>"></td>
    </tr>
    <% } else { %>
    <tr>
        <td>일치하는 회원이 없습니다..</td>
    </tr>
    <% } %>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="수정하기" class="btn btn-primary">
            <input type="reset" value="취소" class="btn btn-warning">
            <input type="button" value="리스트" onclick="location.href='memberList.jsp'" class="btn">
        </td>
    </tr>
</table>
</form>
</body>
</html>
