<%--
  Created by IntelliJ IDEA.
  User: HaiNguyen
  Date: 10/20/2018
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Future Value Calculator</title>
  </head>
  <body>
  <h1>Ứng dụng Future Value Calculator</h1>
  <form action="index.jsp" method="post">
    <div>
      <label for="amount">Nhập số tiền đầu tư</label>
      <input type="number" id="amount" name="amount" placeholder="Số tiền đầu tư" value="0">
    </div>
    <br>
    <div>
      <label for="year">Nhập số năm đầu tư</label>
      <input type="number" id="year" name="year" placeholder="Số năm đầu tư" value="0">
    </div>
    <br>
    <div>
      <label for="interestRate">Nhập lãi suất</label>
      <input type="number" id="interestRate" name="interestRate" placeholder="Lãi suất năm" value="0">
    </div>
    <br>
    <input type="submit" name="submit" value="Tính tiền">
  </form>

  <%
    if (request.getParameter("submit") != null){
      double amount = Double.parseDouble(request.getParameter("amount"));
      double year = Double.parseDouble(request.getParameter("year"));
      double interestRate = Double.parseDouble(request.getParameter("interestRate"));
      double moneyInterest = amount * year * interestRate * 0.01;
  %>
  <p>Số tiền đầu tư: <%=amount%> USD</p>
  <p>Số năm đầu tư: <%=year%> năm</p>
  <p>Lãi suất hàng năm: <%=interestRate%>%</p>
  <p>Tổng tiền lãi: <%=moneyInterest%> USD</p>
  <%
    }
  %>
  </body>
</html>
