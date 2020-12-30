<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 12. 16.
  Time: 오후 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
    <head>
        <title>Rental Platform</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/auth/joinsuccess.css"/>
    </head>
    <body>
        <c:import url="../fragments/header.jsp" />
        <c:import url="fragments/joinSuccessContents.jsp" />
    </body>
</html>
