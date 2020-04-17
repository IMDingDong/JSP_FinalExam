<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="thinkonweb.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>

<%
  
  Connection conn = ConnectionContext.getConnection();
  PreparedStatement pstmt = conn.prepareStatement("DELETE FROM EMPLOYEE WHERE EMPNO=?;");
  pstmt.setInt(1, Integer.parseInt(request.getParameter("empno")));
  pstmt.executeUpdate();
  pstmt.close();
  response.sendRedirect("employee_management.jsp");
%>