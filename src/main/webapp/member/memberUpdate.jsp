<%@ page import="kr.bit.model.MemberVO" %>
<%@ page import="kr.bit.model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-04
  Time: 오후 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    //파라메타 수집 (VO)
    int num = Integer.parseInt(request.getParameter("num"));
    int age = Integer.parseInt(request.getParameter("age"));
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    MemberVO vo = new MemberVO();
    vo.setNum(num);
    vo.setAge(age);
    vo.setEmail(email);
    vo.setPhone(phone);

    MemberDAO dao = new MemberDAO();
    int cnt = dao.memberUpdate(vo);
    if (cnt > 0) {
        //가입성공
        response.sendRedirect("memberList.jsp");
    } else {
        // 가입실패 -> 예외실패 WAS
        throw new ServletException("not update");
    }


%>
