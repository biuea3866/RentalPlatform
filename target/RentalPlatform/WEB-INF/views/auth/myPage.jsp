<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 11. 28.
  Time: 오후 7:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>
        <title>Rental Platform</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/auth/myPage.css"/>
    </head>
    <body>
        <c:import url="../fragments/header.jsp"/>
        <div id="myPage_contents">
            <c:import url="fragments/contents.jsp"/>
        </div>
    </body>
</html>
