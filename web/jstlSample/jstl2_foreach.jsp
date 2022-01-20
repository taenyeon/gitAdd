<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/29
  Time: 10:53 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>jstl2_foreach.jsp</h2>
<%
    List<String> nameList = new ArrayList<>(Arrays.asList("이름4","이름5","이름6"));
    request.setAttribute("name3",nameList);
    List<String> nameList2 = new ArrayList<>(Arrays.asList("이름7","이름8","이름9"));
    request.setAttribute("name4",nameList2);
%>
<%--<c:forEach items="이름1,이름2,이름3" var="name">--%>
<%--    <br>${name}--%>
<%--</c:forEach>--%>

<%--<c:forEach var="name" items="${name3}" varStatus="st">--%>
<%--    <br>${st.count} <c:out value="${name}"/>--%>
<%--</c:forEach>--%>

<%--<c:forEach var="name" items="${name4}" varStatus="st">--%>
<%--    <br> ${name} : ${name4[st.index]}--%>
<%--</c:forEach>--%>

<%--<c:forEach var="i" begin="1" end="10">--%>
<%--    <br><c:out value="${i}"/>--%>
<%--</c:forEach>--%>

<%--<c:forEach var="i" begin="1" end="10" varStatus="st">--%>
<%--    ${i }--%>
<%--    <c:if test="${!st.last}">--%>
<%--        ,--%>
<%--    </c:if>--%>

<c:set var="n" value="0"/>
    <c:forEach var="i" begin="1" end="10" varStatus="st">
        ${i }
        <c:set value="${n+i}" var="n"/>
        <c:if test="${!st.last}">,</c:if>
</c:forEach>
sum:${n}
<br>
<hr>

<c:set value="0" var="n" scope="application"/>
<c:forEach var="i" begin="1" end="10" varStatus="st">
    ${i}
    <c:set value="${n+i}" var="n"/>
    <c:if test="${!st.last}">,</c:if>
</c:forEach>
sum:${n}
</body>
</html>
