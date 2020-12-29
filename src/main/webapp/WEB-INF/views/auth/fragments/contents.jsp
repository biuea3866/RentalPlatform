<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 11. 28.
  Time: 오후 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/auth/fragments/contents.css">
<div id="table_layout">
    <table>
        <c:choose>
            <c:when test="${ empty authUser }">
                <tr>
                    <td class="full_line" colspan="2">
                        <div class="table_text">
                            <a href="${pageContext.request.contextPath}/auth/login">
                                로그인 및 회원가입 하기
                            </a>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="half_left_line">
                        <div class="table_text">
                            내 포인트
                        </div>
                        <span class="shortcut_area">
                    <a href="#">
                        <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                    </a>
                </span>
                    </td>
                    <td class="half_right_line">
                        <div class="table_text">
                            내 게시글
                        </div>
                        <span class="shortcut_area">
                    <a href="#">
                        <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                    </a>
                </span>
                    </td>
                </tr>
                <tr>
                    <td class="half_left_line">
                        <div class="table_text">
                            찜 리스트
                        </div>
                        <span class="shortcut_area">
                    <a href="#">
                        <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                    </a>
                </span>
                    </td>
                    <td class="half_right_line">
                        <div class="table_text">
                            쪽지함
                        </div>
                        <span class="shortcut_area">
                    <a href="#">
                        <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                    </a>
                </span>
                    </td>
                </tr>
                <tr>
                    <td class="full_line" colspan="2">
                        <div class="table_text">
                            대관 내역
                        </div>
                        <div class="shortcut_area">
                            <a href="#">
                                <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                            </a>
                        </div>
                    </td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td class="full_line" colspan="2">
                        <div id="myPage_login_box" class="table_text">
                            안녕하세요 <b>${ authUser.nickName }</b> 님!
                        </div>
                        <div id="myPage_logout_box">
                            <input id="logout_button" type="button" value="로그아웃" onclick="logout()">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="half_left_line">
                        <div class="table_text">
                            내 포인트
                        </div>
                        <span class="shortcut_area">
                    <a href="#">
                        <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                    </a>
                </span>
                    </td>
                    <td class="half_right_line">
                        <div class="table_text">
                            내 게시글
                        </div>
                        <span class="shortcut_area">
                    <a href="#">
                        <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                    </a>
                </span>
                    </td>
                </tr>
                <tr>
                    <td class="half_left_line">
                        <div class="table_text">
                            찜 리스트
                        </div>
                        <span class="shortcut_area">
                    <a href="#">
                        <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                    </a>
                </span>
                    </td>
                    <td class="half_right_line">
                        <div class="table_text">
                            쪽지함
                        </div>
                        <span class="shortcut_area">
                    <a href="#">
                        <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                    </a>
                </span>
                    </td>
                </tr>
                <tr>
                    <td class="full_line" colspan="2">
                        <div class="table_text">
                            대관 내역
                        </div>
                        <div class="shortcut_area">
                            <a href="#">
                                <ion-icon src="${pageContext.request.contextPath}/resources/static/img/chevron-forward-outline.svg"></ion-icon>
                            </a>
                        </div>
                    </td>
                </tr>
            </c:otherwise>
        </c:choose>
    </table>
</div>

<script src="${pageContext.request.contextPath}/resources/static/js/auth/myPage.js"></script>