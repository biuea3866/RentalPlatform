<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 12. 15.
  Time: 오후 7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/auth/fragments/joinContents.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/style.css"/>

<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<div id="join_contents">
    <div id="join_contents_header">
        물건 대여 플랫폼에 <br>
        처음 오셨군요!
    </div>
    <div id="join_contents_contents">
        <form
            id="joinForm"
            name="joinForm"
            method="post"
            action="${pageContext.servletContext.contextPath}/auth/join"
            onsubmit="return register()"
        >
            <input
                type="text"
                id="email"
                class="styled_input"
                name="email"
                placeholder="이메일을 입력해주세요"
                oninput="checkEmail()"
                onkeyup="checkEmailFormat()"
            />
            <input
                type="password"
                id="password"
                class="styled_input"
                name="password"
                placeholder="비밀번호를 입력해주세요"
            />
            <input
                type="password"
                id="passwordConfirm"
                class="styled_input"
                name="passwordConfirm"
                placeholder="비밀번호를 재입력해주세요"
                onkeyup="checkPassword()"
            />
            <input
                type="text"
                id="nickName"
                class="styled_input"
                name="nickName"
                placeholder="닉네임을 입력해주세요"
                oninput="checkNickname()"
            />
            <input
                type="text"
                id="phoneNumber"
                class="styled_input"
                name="phoneNumber"
                placeholder="'-'을 넣어주세요 (010-0000-0000)"
                onkeyup="checkPhone()"
            />
            <input
                type="text"
                id="addressBasic"
                class="styled_input"
                name="addressBasic"
                placeholder="주소 검색"
                onclick="openDaumZipAddress()"
                readonly
            />
            <input
                type="text"
                id="addressDetail"
                class="styled_input"
                name="addressDetail"
                placeholder="상세 주소"
            />
            <div id="login_contents_error">
                <span id="error"></span>
            </div>
            <input
                type="submit"
                class="styled_button_full"
                value="Join"
            />
        </form>
    </div>
</div>
<!-- Script -->
<script src="${pageContext.request.contextPath}/resources/static/js/auth/join.js"></script>
<!-- JQuery -->
<script src="${pageContext.request.contextPath}/resources/static/js/jquery-3.5.1.min.js"></script>
<!-- BootStrap -->
<script src="${pageContext.request.contextPath}/resources/static/js/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>