<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/29
  Time: 12:54 오후
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>jstl7choose.jsp</h2>
<%
    int ranNum= (int)(Math.random()*10 +1);
    String grade = "a" + ranNum;
    System.out.println("grade = " + grade);
%>
<c:set value="<%=grade%>" var="grade" />
<c:choose>
    <c:when test="${grade =='a1'}">
        당신의 등급은 : A1
    </c:when>
    <c:when test="${grade =='a2'}">
        당신의 등급은 : A2
    </c:when>
    <c:when test="${grade =='a3'}">
        당신의 등급은 : A3
    </c:when>
    <c:when test="${grade =='a4'}">
        당신의 등급은 : A4
    </c:when>
    <c:when test="${grade =='a5'}">
        당신의 등급은 : A5
    </c:when>
    <c:otherwise>
        당신의 등급은 : 기타
    </c:otherwise>
</c:choose>

</body>
</html>
