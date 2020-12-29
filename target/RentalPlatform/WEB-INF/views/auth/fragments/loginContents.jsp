<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 12. 15.
  Time: 오후 5:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/auth/fragments/loginContents.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/style.css"/>

<div id="login_contents">
    <div id="login_contents_header">
        물건 대여 플랫폼에 <br>
        오신 것을 환영합니다!
    </div>
    <div id="login_contents_contents">
        <form
            id="loginForm"
            name="loginForm"
            method="post"
            action="/auth/loginCheck"
            onsubmit="return login()"
        >
            <input
                type="text"
                id="email"
                class="styled_input"
                name="email"
                placeholder="이메일을 입력해주세요"
            />
            <input
                type="password"
                id="password"
                class="styled_input"
                name="password"
                placeholder="비밀번호를 입력해주세요"
            />
            <div id="login_contents_error">
                <span id="error"></span>
            </div>
            <input
                type="submit"
                class="styled_button_full"
                value="Login"
            />
            <input
                id="signup"
                type="button"
                class="styled_button_border"
                value="Sign Up"
            >
        </form>
    </div>
</div>
<script src="${pageContext.request.contextPath}/resources/static/js/auth/login.js"></script>