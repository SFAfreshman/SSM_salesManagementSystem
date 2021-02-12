<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/11/30
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>管理</title>
    <link type="text/css" rel="styleSheet"  href="../../mytable.css" />
    <link type="text/css" rel="styleSheet"  href="../../leftBar.css" />

</head>
<body>
<div class="leftBar">
    <%--TODO 销售管理员标准左侧栏--%>
    <div><h2 class="button-href">销售管理</h2> </div>
    <div class="leftLink"><a href="${pageContext.request.contextPath}/contact/list" class="button-href">合同管理</a></div>
    <div class="leftLink"><a href="${pageContext.request.contextPath}/forms/list" class="button-href">客户管理【未】</a></div>
    <div class="leftLink"><a href="${pageContext.request.contextPath}/salesman/list" class="button-href">销售管理</a></div>
</div>
<%--<a href="${pageContext.request.contextPath}/salesman/salesmanAdd">添加</a>--%>
<div class="middle">
    <div class="taleContainer">
        <h4>销售员列表</h4>
        <button onclick="window.open('${pageContext.request.contextPath}/salesman/salesmanAdd','商品添加','height=700,width=1000,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')">添加</button>
        <table>
            <c:if test="${requestScope.salesman == null}">
                没有
            </c:if>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Update</th>
            </tr>
            <c:forEach items="${requestScope.salesman}" var="g">
                <tr>
                    <td>${g.salesmanId}</td>
                    <td>${g.salesmanName}</td>
                    <td>${g.salesmanPhone}</td>
                    <td>
                        <button style="width: fit-content">
                            <a href="${pageContext.request.contextPath}/salesman/edit/${g.salesmanId}" class="button-href" >update
                            </a></button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
