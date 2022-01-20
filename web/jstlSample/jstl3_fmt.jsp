<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/29
  Time: 11:49 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>jstl3_fmt.jsp</h2>
number: <fmt:formatNumber value="12345678" type="number"/> <br>
currency: <fmt:formatNumber value="12345678" type="currency" currencySymbol="🌕"/> <br>
percent: <fmt:formatNumber value="12345678" type="percent"/> <br>
pattern: <fmt:formatNumber value="12345678" pattern=".0" /> <br>

<%--<c:set var="now" value="<%=new java.util.Date()%>"/>--%>
<%--${now} <br>--%>

<%--date: <fmt:formatDate value="${now }" type="date"/>--%>
<%--time: <fmt:formatDate value="${now }" type="time"/>--%>
<%--both: <fmt:formatDate value="${now }" type="both"/>--%>

</body>
</html>
