<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="thinkonweb.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>

<html>
<head>
  <title>��� ���� �˻� ���â</title>
</head>
<body>
  <center>
    <h2>��� ���� �˻� ���</h2>
    <table border=1>
      <tr>
        <td>�����ȣ</td>
        <td>�̸�</td>
        <td>�̸���</td>
        <td>��ȭ��ȣ</td>
        <td>�Ի���</td>
        <td>����</td>
        <td>����</td>
      </tr>
      <tr>
        <!-- ������ȣ������ 14107050 �Ӵ뵿 -->
        <%
          Connection conn = ConnectionContext.getConnection();
          PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM EMPLOYEE;");
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
            out.println("<tr>");
            out.println("<td>"+rs_empno+"</td>");
            out.println("<td>"+rs_ename+"</td>");
            out.println("<td>"+rs_email+"</td>");
            out.println("<td>"+rs_tel+"</td>");
            out.println("<td>"+rs_hiredate+"</td>");
            out.println("<td><a href='employee_delete.jsp?empno="+rs_empno+"'>����</a>");
            out.println("<td><a href='employee_update.jsp?empno="+rs_empno+"'>����</a>");
            out.println("</tr>");
          }
          pstmt.close();
          rs.close();
        %>
    </table>
  </center>
</body>
</html>