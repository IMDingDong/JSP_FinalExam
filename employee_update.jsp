<%@ page contentType="text/html; charset=euc-kr" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=euc-kr">
    <title>사원 정보 수정</title>
  </head>
  <body>
    <!-- 정보보호학전공 14107050 임대동 -->
    <center>
      <h2>사원 정보 수정</h2>
        <form action="employee_update_process.jsp" method="GET">
        <table border=1>
          <tr>
            <td>사원번호</td>
            <td>
              <input type="text" name="empno" value="<%=request.getParameter("empno")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>이름</td>
            <td>
              <input type="text" name="ename" value="<%=request.getParameter("ename")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>이메일</td>
            <td>
              <input type="text" name="email" value="<%=request.getParameter("email")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>입사일</td>
            <td>
              <input type="text" name="hiredate" value="<%=request.getParameter("hiredate")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>전화번호</td>
            <td>
              <input type="text" name="tel" value="<%=request.getParameter("tel")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>보너스</td>
            <td>
              <input type="text" name="comm" value="<%=request.getParameter("comm")%>"><br/>
            </td>
          </tr>
          <tr>
            <td>부서명</td>
            <td>
              <input type="text" name="dept" value="<%=request.getParameter("dept")%>"><br/>
            </td>
          </tr>
        </table>
        <br/>
        <p>
        <input type="submit" value="전송" name="submitbtn">
        <input type="reset" value="초기화" name="resetbtn">
      </form>
    </center>
  </body>
</html>