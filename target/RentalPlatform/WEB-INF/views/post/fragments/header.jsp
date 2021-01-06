<%--
  Created by IntelliJ IDEA.
  User: biuea
  Date: 20. 12. 30.
  Time: 오후 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/post/fragments/header.css">
<div id="post_header">
    <div id="post_header_search">
        <div id="searchBar_area">
            <input
                id="searchBar"
                name="searchBar"
                class="styled_input"
                type="text"
                placeholder="키워드를 입력해주세요"
            />
        </div>
        <div id="searchButton_area">
            <input
                id="searchButton"
                name="searchButton"
                type="button"
                value="검색"
            />
        </div>
    </div>
    <div id="post_header_write">
        <div
            id="postWrite"
            name="postWrite"
        >
            <a href="${pageContext.request.contextPath}/posts/postWrite">
                글쓰기
            </a>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/resources/static/js/post/post.js"></script>