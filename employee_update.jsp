<%@ page contentType="text/html; charset=euc-kr" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=euc-kr">
    <title>��� ���� ����</title>
  </head>
  <body>
    <!-- ������ȣ������ 14107050 �Ӵ뵿 -->
    <center>
      <h2>��� ���� ����</h2>
        <form action="employee_update_process.jsp" method="GET">
        <table border=1>
          <tr>
            <td>�����ȣ</td>
            <td>
              <input type="text" name="empno" value="<%=request.getParameter("empno")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>�̸�</td>
            <td>
              <input type="text" name="ename" value="<%=request.getParameter("ename")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>�̸���</td>
            <td>
              <input type="text" name="email" value="<%=request.getParameter("email")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>�Ի���</td>
            <td>
              <input type="text" name="hiredate" value="<%=request.getParameter("hiredate")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>��ȭ��ȣ</td>
            <td>
              <input type="text" name="tel" value="<%=request.getParameter("tel")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>���ʽ�</td>
            <td>
              <input type="text" name="comm" value="<%=request.getParameter("comm")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>�μ���</td>
            <td>
              <input type="text" name="dept" value="<%=request.getParameter("dept")%>"><br/>
            </td>
          </tr>
        </table>
        <br/>
        <p>
        <input type="submit" value="����" name="submitbtn">
        <input type="reset" value="�ʱ�ȭ" name="resetbtn">
      </form>
    </center>
  </body>
</html>