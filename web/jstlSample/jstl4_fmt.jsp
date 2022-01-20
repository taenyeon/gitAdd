<%@ page import="java.util.Date" %>
<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/29
  Time: 12:01 오후
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Date date = new Date();
%>
<c:set var="now" value="<%=date%>"/>

<fmt:formatNumber value="1000000" type="currency" /> <br />
<fmt:formatNumber value="1000000" type="currency"  pattern="#원" /> <br />
<fmt:formatNumber value="1000000" type="currency"  pattern="###,###원" /> <br />
<fmt:formatNumber value="1000000" type="currency"  pattern="###,###" />원 <br />
<fmt:formatNumber value="1000000.1254" type="currency"  pattern="###,###.##" />원 <br />

<hr>
locale <br>
<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium"
                pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="short"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />

timeZone <br>
<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium"
                pattern="YYYY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"
                timeZone="America/Los_Angeles"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />

국가코드 알아보기 <br>
<c:set var="ics" value="<%=Locale.getAvailableLocales()%>"/>
<c:forEach items="${ics }" var="lo">
    ${lo } &nbsp;
</c:forEach>

</body>
</html>
