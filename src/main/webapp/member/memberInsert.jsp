<%@ page import="kr.bit.model.MemberVO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="kr.bit.model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-09-25
  Time: 오후 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 파라메타 수집(VO)
    request.setCharacterEncoding("utf-8");
    //1. 파라메타 수집(VO)
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    //2. 파라메타수집(VO)
    MemberVO vo = new MemberVO(id,pass,name,age,email,phone);
    vo.setId(id);
    vo.setPass(pass);
    vo.setName(name);
    vo.setAge(age);
    vo.setEmail(email);
    vo.setPhone(phone);

    //Model과 연동부분
    MemberDAO dao = new MemberDAO();
    int cnt = dao.memberInsert(vo);

    if(cnt >0){
        //가입성공
        response.sendRedirect("memberList.jsp");
    }else{
        //가입실패 -> 예외객체를 만들어서 WAS에게 던짐.
        throw new ServletException("not insert");
    }

%>

