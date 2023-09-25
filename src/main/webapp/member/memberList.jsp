<%@ page import="kr.bit.model.MemberDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.bit.model.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-09-25
  Time: 오후 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberDAO dao = new MemberDAO();
    ArrayList<MemberVO> list = dao.memberList();
%>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function deleteFn(num){
            location.href="memberDelete.jsp?num="+num; //?num=12
        }
    </script>
</head>
<body>
<table class="table table-bordered">
    <tr>
        <td>번호</td>
        <td>아이디</td>
        <td>비밀번호</td>
        <td>이름</td>
        <td>나이</td>
        <td>이메일</td>
        <td>전화번호</td>
        <td>삭제</td>
    </tr>
    <%
        for (MemberVO vo : list) {%>
    <tr>
        <td><%=vo.getNum()%>
        </td>
        <td><%=vo.getId()%>
        </td>
        <td><%=vo.getPass()%>
        </td>
        <td><%=vo.getName()%>
        </td>
        <td><%=vo.getAge()%>
        </td>
        <td><%=vo.getEmail()%>
        </td>
        <td><%=vo.getPhone()%>
        </td>
        <td><input type="button" value="삭제" class="btn btn-warning" onclick="deleteFn(<%=vo.getName()%>)"></td>
    </tr>
    <% } %>
    <tr>
        <td colspan="7" align="right"><input type="button" value="회원가입" class="btn btn-primary"
                                             onclick="location.href='memberRegister.html'"></td>
    </tr>
</table>

</body>
</html>
