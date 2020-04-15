<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="thinkonweb.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<html>
<head>
  <title>��� ���� �Է� ���â</title>
</head>
<body>
  <%
    SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Date hiredate = fm.parse(request.getParameter("hiredate"));
    java.sql.Date hiredate_sql = new java.sql.Date(hiredate.getTime());
    
    Connection conn = ConnectionContext.getConnection();
    PreparedStatement pstmt = conn.prepareStatement("INSERT INTO EMPLOYEE (EMPNO, ENAME, EMAIL, HIREDATE, TEL, COMM, DEPT) VALUES (?, ?, ?, ?, ?, ?, ?);");
    pstmt.setInt(1, Integer.parseInt(request.getParameter("empno")));
    pstmt.setString(2, request.getParameter("ename"));
    pstmt.setString(3, request.getParameter("email"));
    pstmt.setDate(4, hiredate_sql);
    pstmt.setString(5, request.getParameter("tel"));
    pstmt.setInt(6, Integer.parseInt(request.getParameter("comm")));
    pstmt.setString(7, request.getParameter("dept"));
    pstmt.executeUpdate();
    pstmt.close();
  %>
  <!-- ������ȣ������ 14107050 �Ӵ뵿 -->
  <center>
    <h2>��� ���� �Է� �Ϸ�!!!</h2>
  </center>
</body>
</html>