<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 11. 26.
  Time: 오전 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/font.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/fragments/header.css">
<div id="header">
    <div id="header_title">
        <a href="${pageContext.request.contextPath}/"
           class="Ubuntu_B"
        >
            Rental Platform
        </a>
    </div>
    <div id="header_nav">
        <div id="header_nav_area">
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/">
                        <div class="header_nav_icon_area">
                            <ion-icon src="${pageContext.request.contextPath}/resources/static/img/home-outline.svg"></ion-icon>
                        </div>
                        <span class="header_nav_text_area Anton">
                            Home
                        </span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/posts/">
                        <div class="header_nav_icon_area">
                            <ion-icon src="${pageContext.request.contextPath}/resources/static/img/clipboard-outline.svg"></ion-icon>
                        </div>
                        <span class="header_nav_text_area Anton">
                            Post
                        </span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/auth/myPage">
                        <div class="header_nav_icon_area">
                            <ion-icon src="${pageContext.request.contextPath}/resources/static/img/person-outline.svg"></ion-icon>
                        </div>
                        <span class="header_nav_text_area Anton">
                            My
                        </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- Ionicons -->
<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
