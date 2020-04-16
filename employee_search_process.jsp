<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="thinkonweb.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>

<html>
<head>
  <title>사원 정보 검색 결과창</title>
</head>
<body>
  <center>
    <h2>사원 정보 검색 결과</h2>
    <table border=1>
      <tr>
        <td>사원번호</td>
        <td>이름</td>
        <td>이메일</td>
        <td>입사일</td>
        <td>전화번호</td>
        <td>보너스</td>
        <td>부서명</td>
      </tr>
      <tr>
        <!-- 정보보호학전공 14107050 임대동 -->
        <%
          Connection conn = ConnectionContext.getConnection();
          PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM EMPLOYEE WHERE ENAME=?;");
          pstmt.setString(1, request.getParameter("ename"));
          ResultSet rs = pstmt.executeQuery();
          
          int rs_empno, rs_comm;
          String rs_ename, rs_email, rs_tel, rs_dept;
          Date rs_hiredate;
          
          while (rs.next()) {
            rs_empno = rs.getInt("EMPNO");
            rs_ename = rs.getString("ENAME");
            rs_email = rs.getString("EMAIL");
            rs_hiredate = rs.getDate("HIREDATE");
            rs_tel = rs.getString("TEL");
            rs_comm = rs.getInt("COMM");
            rs_dept = rs.getString("DEPT");
            out.println("<td>"+rs_empno+"</td>");
            out.println("<td>"+rs_ename+"</td>");
            out.println("<td>"+rs_email+"</td>");
            out.println("<td>"+rs_hiredate+"</td>");
            out.println("<td>"+rs_tel+"</td>");
            out.println("<td>"+rs_comm+"</td>");
            out.println("<td>"+rs_dept+"</td>");
          }
          pstmt.close();
          rs.close();
        %>
      </tr>
    </table>
  </center>
</body>
</html>